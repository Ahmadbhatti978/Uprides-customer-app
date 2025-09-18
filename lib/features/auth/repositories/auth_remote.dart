import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'package:crypto/crypto.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_auth/firebase_auth.dart' as fauth;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import '../../../core/failure/failure.dart';
import '../../../util/api/api_routes.dart';
import '../../../util/api/call.dart';
import '../../../util/variable.dart';
import '../model/delete_account.dart';
import '../model/user_detail.dart';
import 'auth_local.dart';
part 'auth_remote.g.dart';

enum Social { google, apple }

/// Abstract authentication repository interface.
///
Map<String, dynamic> currentLocation() => {
      "current_location": {"longitude": currentCoordinate.longitude, "latitude": currentCoordinate.latitude},
    };

///
abstract interface class AuthRepository {
  // Sign up
  Future<Either<ErrorDetails, String>> sendPhoneOtp(final String phoneNo, {final bool isSocial, final String? token, final String? emailAdd});
  Future<Either<ErrorDetails, String>> verifyPhoneOtp(
    final String otp,
    final String phoneNo, {
    final bool isSocial,
    final String? token,
    final String? emailAdd,
  });
  Future<Either<ErrorDetails, String>> sendEmailOtp(final String email, {final String? phoneNo, final String? token});
  Future<Either<ErrorDetails, String>> verifyEmailOtp(final String otp, final String emailAdd, {final String? token});
  Future<Either<ErrorDetails, List<String>>> suggestUserName(final String fullName, {final String? token});
  Future<Either<ErrorDetails, UserDetail>> completeRegistration(
    final String fullName,
    final String username,
    final String language,
    final String country,
    final String password, {
    final String? deviceID,
    final String? token,
  });
  Future<Either<ErrorDetails, UserDetail>> socialAuth(
    final String fullName,
    final String username,
    final String language,
    final String country,
    final String password,
    final Social provider,
    final String email,
    final String? profilePic, {
    final String? deviceID,
    final String? token,
  });

  // Login
  Future<Either<ErrorDetails, Either<UserDetail, String>>> loginEmail(final String email, final String password, {final String? deviceID});
  Future<Either<ErrorDetails, UserDetail>> verifyEmailLogin(final String otp, {final String? deviceID, final String? token});
  Future<Either<ErrorDetails, String>> loginPhone(final String phone, {final String? deviceID, final String? token});
  Future<Either<ErrorDetails, UserDetail>> verifyPhoneLoginOTP(
    final String phone,
    final String otp, {
    final bool isPhoneChange,
    final String? deviceID,
    final String? token,
  });

  Future<Either<ErrorDetails, bool>> logOut({final String? token});
  Future<Either<ErrorDetails, UserDetail>> updateAccessToken({final String? refreshToken});
  Future<Either<ErrorDetails, String>> authenticateWithGoogle();
  Future<Either<ErrorDetails, String>> authenticateWithApple();
  Future<Either<ErrorDetails, bool>> verifyIdTokenAndIsLogin(final String token, final String? fullName);
  Future<Either<ErrorDetails, String?>> getDeviceId();
  Future<Either<ErrorDetails, String>> sendForgotPasswordOTP(final String phone);
  Future<Either<ErrorDetails, String>> verifyForgotPasswordOTP(final String otp, final String phone, {final String? token});
  Future<Either<ErrorDetails, String>> resetPassword(final String password);
  Future<Either<ErrorDetails, DeleteAccount>> sentOtp();
  Future<Either<ErrorDetails, bool>> verifyOtp(final DeleteAccount deleteAccount);
  Future<Either<ErrorDetails, String>> deleteAccount(final DeleteAccount deleteAccount);

  // Future<Either<ErrorDetails, Map<String, dynamic>>> updateUserInfo({String fullName, String fcmToken, File file, String feild});
}

@Riverpod(keepAlive: true)
AuthRemoteRepository authRemoteRepository(final Ref ref) => AuthRemoteRepository(
      fauth.FirebaseAuth.instance,
      DeviceInfoPlugin(),

      ///ref.read(googleSignInProvider),
    );

/// Implementation of the [AuthRepository] using FirebaseAuth and a custom ClientService.
class AuthRemoteRepository implements AuthRepository {
  AuthRemoteRepository(this.auth, this.deviceInfo) {
    getDeviceId();
  }
  final fauth.FirebaseAuth auth;
  final DeviceInfoPlugin deviceInfo;
  //final GoogleSignIn _googleSignIn;

  // Create a new instance of GoogleSignIn

  // Retained variables (do not remove these)

  String? email;
  String? phone;
  String userDeviceId = "";
  fauth.UserCredential? userCredential;
  String? authToken;

  /// Resets the authentication state.
  void reset() {
    email = null;
    phone = null;
    userCredential = null;
    authToken = null;
    userDetail = null;
  }

  /// Logs out from both Google and Firebase.
  Future<void> logoutFirebase() async {
    await GoogleSignIn.instance.signOut();
    await auth.signOut();
  }

  /// Checks if a user is currently logged in.
  Future<bool> isLoggedIn() async => auth.currentUser != null;

  /// Retrieves the device ID asynchronously.
  @override
  Future<Either<ErrorDetails, String?>> getDeviceId() async {
    if (userDeviceId.isNotEmpty) return Right(userDeviceId);
    try {
      if (Platform.isAndroid) {
        final AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
        userDeviceId = androidInfo.id;
      } else if (Platform.isIOS) {
        final IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
        if (iosInfo.identifierForVendor == null) {
          return Left(ErrorDetails(message: "Didn't get the iOS ID", stackTrace: StackTrace.current));
        } else {
          userDeviceId = iosInfo.identifierForVendor ?? "";
        }
      } else {
        return Left(ErrorDetails(message: 'Unsupported platform', stackTrace: StackTrace.current));
      }
      if (userDeviceId.isEmpty) {
        return Left(ErrorDetails(message: 'Could not find Device ID', stackTrace: StackTrace.current));
      } else {
        return Right(userDeviceId);
      }
    } catch (e, stackTrace) {
      return Left(ErrorDetails(message: 'Exception in getting Device ID', error: e, stackTrace: stackTrace));
    }
  }

  // ----- SIGN UP METHODS -----

  @override
  Future<Either<ErrorDetails, String>> sendPhoneOtp(final String phoneNo, {final bool isSocial = true, final String? token, final String? emailAdd}) {
    // Use the retained 'email' variable if available.
    final Map<String, String?> payload = <String, String?>{
      'phone': phoneNo,
      if (email != null || userCredential?.user?.email != null) 'email': email ?? userCredential!.user!.email,
    };

    return Request.post<String>(
      path: Api.sendPhoneOtp,
      payload: payload,
      onSuccess: (final json) {
        Request.clientService.token = json['token'] ?? token;
        return json['message'];
      },
    );
  }

  @override
  Future<Either<ErrorDetails, String>> verifyPhoneOtp(
    final String otp,
    final String phoneNo, {
    final bool isSocial = true,
    final String? token,
    final String? emailAdd,
  }) {
    final Map<String, Object?> payload = <String, Object?>{
      'token': token ?? Request.clientService.token,
      'otp': otp,
      'phone': phoneNo,
      'is_social': isSocial,
      if (email != null && !isSocial) 'email': email,
      if (userCredential?.user?.email != null && isSocial) 'email': userCredential!.user!.email,
    };
    return Request.post<String>(
      path: Api.verifyPhoneOtp,
      payload: payload,
      onSuccess: (final json) {
        // Retain the phone number.
        phone = phoneNo;
        if (((email ?? emailAdd) != null) || isSocial) {
          authToken = json['authToken'];
          if (authToken != null) {
            Request.clientService.token = authToken!;
          }
        }
        return json['message'];
      },
    );
  }

  @override
  Future<Either<ErrorDetails, String>> sendEmailOtp(final String emailAdd, {final String? phoneNo, final String? token}) {
    final Map<String, String?> payload = <String, String?>{'email': emailAdd, if (phone != null) 'phone': phone};
    return Request.post<String>(
      path: Api.sendEmailOtp,
      payload: payload,
      onSuccess: (final json) {
        userCredential = null;
        authToken = json['activationToken'] ?? token;
        return json['message'];
      },
    );
  }

  @override
  Future<Either<ErrorDetails, String>> verifyEmailOtp(final String otp, final String emailAdd, {final String? token}) {
    final Map<String, String?> payload = <String, String?>{'activation_token': token ?? authToken, 'activation_code': otp};
    return Request.post<String>(
      path: Api.verifyEmailOtp,
      payload: payload,
      onSuccess: (final json) {
        userCredential = null;
        // Retain the email address.
        email = emailAdd;
        if (phone != null) {
          authToken = json['authToken'];
          if (authToken != null) {
            Request.clientService.token = authToken!;
          }
        }
        return json['message'];
      },
    );
  }

  @override
  Future<Either<ErrorDetails, List<String>>> suggestUserName(final String fullName, {final String? token}) {
    final Map<String, String> payload = <String, String>{'full_name': fullName};
    return Request.post<List<String>>(path: Api.suggestUserName, payload: payload, onSuccess: (final json) => List<String>.from(json['usernames']));
  }

  @override
  Future<Either<ErrorDetails, UserDetail>> completeRegistration(
    final String fullName,
    final String username,
    final String language,
    final String country,
    final String password, {
    final String? deviceID,
    final String? token,
  }) async {
    final Either<ErrorDetails, String?> deviceResult = await getDeviceId();
    final String? finalDeviceId = deviceID ?? deviceResult.fold((final ErrorDetails l) => null, (final String? r) => r) ?? userDeviceId;
    final Map<String, dynamic> payload = <String, dynamic>{
      'full_name': fullName,
      'username': username,
      'language': language,
      'country': country,
      'password': password,
      'device_id': finalDeviceId ?? '',
      ...currentLocation(),
    };
    return Request.put<UserDetail>(path: Api.completeRegistration, payload: payload, onSuccess: (final json) => AuthLocalRepo.saveUserDetailMap(json));
  }

  @override
  Future<Either<ErrorDetails, UserDetail>> socialAuth(
    final String fullName,
    final String username,
    final String language,
    final String country,
    final String password,
    final Social provider,
    final String email,
    final String? profilePic, {
    final String? deviceID,
    final String? token,
  }) {
    final Map<String, dynamic> payload = <String, dynamic>{
      'full_name': fullName,
      'username': username,
      'language': language,
      // "country": country, // Uncomment if needed.
      'device_id': deviceID ?? userDeviceId,
      'provider': provider.name.toUpperCase(),
      'email': email,
      'profile_pic': profilePic ?? userCredential?.user?.photoURL ?? '',
      ...currentLocation(),
    };
    return Request.post<UserDetail>(path: Api.socialAuth, payload: payload, onSuccess: (final json) => AuthLocalRepo.saveUserDetailMap(json));
  }

  // ----- LOGIN METHODS -----

  @override
  Future<Either<ErrorDetails, Either<UserDetail, String>>> loginEmail(final String emailInput, final String password, {final String? deviceID}) {
    final Map<String, String?> payload = <String, String?>{'email': emailInput, 'password': password, 'device_id': deviceID ?? userDeviceId};
    return Request.post<Either<UserDetail, String>>(
      path: Api.loginEmail,
      payload: payload,
      onSuccess: (final json) {
        if (json["activationToken"] == null || json["accessToken"] != null) {
          // Successful login, return UserDetail in Left of Either
          return Either.left(AuthLocalRepo.saveUserDetailMap(json));
        } else {
          // Activation required, return activationToken in Right of Either
          return Either.right(authToken = json["activationToken"] as String);
        }
      },
    );
  }

  //NOT in use
  @override
  Future<Either<ErrorDetails, UserDetail>> verifyEmailLogin(final String otp, {final String? deviceID, final String? token}) {
    final Map<String, dynamic> payload = <String, dynamic>{
      'otp': otp,
      'device_id': deviceID ?? userDeviceId,
      'token': token ?? Request.clientService.token,
      ...currentLocation(),
    };
    return Request.post<UserDetail>(path: Api.verifyLoginEmail, payload: payload, onSuccess: (final json) => AuthLocalRepo.saveUserDetailMap(json));
  }

  @override
  Future<Either<ErrorDetails, String>> loginPhone(final String phoneInput, {final String? deviceID, String? token}) {
    final Map<String, String?> payload = <String, String?>{'phone': phoneInput, 'device_id': deviceID ?? userDeviceId};
    return Request.post<String>(
      path: Api.loginPhone,
      payload: payload,
      onSuccess: (final json) {
        if (json['token'] != null) {
          token = json['token'];
          Request.clientService.token = token!;
        }
        return json['message'];
      },
    );
  }

  @override
  Future<Either<ErrorDetails, UserDetail>> verifyPhoneLoginOTP(
    final String phoneInput,
    final String otp, {
    final bool isPhoneChange = false,
    final String? deviceID,
    final String? token,
  }) {
    final Map<String, Object?> payload = <String, Object?>{
      'phone': phoneInput,
      'otp': otp,
      'is_phone_change': isPhoneChange,
      'device_id': deviceID ?? userDeviceId,
      'token': token ?? Request.clientService.token,
      ...currentLocation(),
    };
    return Request.post<UserDetail>(path: Api.verifyPhoneLoginOTP, payload: payload, onSuccess: (final json) => AuthLocalRepo.saveUserDetailMap(json));
  }

  @override
  Future<Either<ErrorDetails, UserDetail>> updateAccessToken({final String? refreshToken}) {
    final Map<String, String?> payload = <String, String?>{'refresh_token': refreshToken ?? userDetail?.refreshToken};
    return Request.post<UserDetail>(path: Api.refreshToken, payload: payload, onSuccess: (final json) => AuthLocalRepo.saveUserDetailMap(json), retry: false);
  }

  @override
  Future<Either<ErrorDetails, bool>> verifyIdTokenAndIsLogin(final String token, final String? fullName) {
    final Map<String, dynamic> payload = <String, dynamic>{'id_token': token, 'device_id': userDeviceId, 'full_name': fullName, ...currentLocation()};
    Request.clientService.token = token;

    return Request.post<bool>(
      path: Api.verifyIDToken,
      payload: payload,
      onSuccess: (final json) {
        if (json['accessToken'] != null) {
          rideId = userDetail?.ride?.rideId;
          AuthLocalRepo.saveUserDetailMap(json);
          return true;
        }
        if (json['token'] != null) {
          // Retain the phone if provided.
          phone = json['phone'];
          Request.clientService.token = json['token'];
          return true;
        }
        if (json['full_name'] != null) {
          userCredential?.user?.updateDisplayName(json['full_name']);
        }
        return false;
      },
    );
  }

  @override
  Future<Either<ErrorDetails, bool>> logOut({final String? token}) => Request.get<bool>(
        path: Api.logout,
        //   headers: {'Authorization': 'Bearer $token'},
        onSuccess: (final json) {
          Request.clientService.token = '';
          return true;
        },
      );

  // 1. Helper functions to generate nonce and its SHA256 hash
  String _generateNonce([final int length = 32]) {
    const String charset = '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
    final Random random = Random.secure();
    return List.generate(length, (_) => charset[random.nextInt(charset.length)]).join();
  }

  String _sha256OfString(final String input) {
    final Uint8List bytes = utf8.encode(input);
    final Digest digest = sha256.convert(bytes);
    return digest.toString();
  }

  @override
  Future<Either<ErrorDetails, String>> authenticateWithApple() async {
    try {
      final String rawNonce = _generateNonce();
      final String nonce = _sha256OfString(rawNonce);

      final AuthorizationCredentialAppleID appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: <AppleIDAuthorizationScopes>[AppleIDAuthorizationScopes.email, AppleIDAuthorizationScopes.fullName],
        nonce: nonce,
      );

      final fauth.OAuthCredential oauthCredential = fauth.OAuthProvider(
        'apple.com',
      ).credential(idToken: appleCredential.identityToken, rawNonce: rawNonce, accessToken: appleCredential.authorizationCode);

      // Sign in to Firebase
      userCredential = await auth.signInWithCredential(oauthCredential);

      // ✨ --- NEW: CAPTURE AND UPDATE USER PROFILE --- ✨
      // Check if Apple provided the name (only happens on the first sign-in)
      // and if the Firebase user's display name is not already set.
      if (appleCredential.givenName != null && userCredential?.user?.displayName == null) {
        final String displayName = '${appleCredential.givenName} ${appleCredential.familyName ?? ''}'.trim();
        await userCredential?.user?.updateDisplayName(displayName);
      }

      // ✨ --- END OF NEW CODE --- ✨

      final String? idToken = await auth.currentUser?.getIdToken();
      if (idToken == null) {
        return Left(ErrorDetails(stackTrace: StackTrace.current, message: "Didn't get the idToken"));
      } else {
        return Right(idToken);
      }
    }
    //  on SignInWithAppleException catch (e) {
    //   if (e.type == SignInWithAppleException.canceled) {
    //     return Left(ErrorDetails(error: e, stackTrace: StackTrace.current, message: 'Apple sign-in canceled by user'));
    //   }
    // }
    on fauth.FirebaseAuthException catch (e, s) {
      // Detailed Firebase code mapping
      return Left(ErrorDetails(error: e, stackTrace: s, message: _mapFirebaseAuthCodeToMessage(e.code)));
    } on SocketException catch (e, s) {
      return Left(ErrorDetails(error: e, stackTrace: s, message: 'Network error. Check your connection and try again.'));
    } on TimeoutException catch (e, s) {
      return Left(ErrorDetails(error: e, stackTrace: s, message: 'Request timed out. Please try again.'));
    } catch (e, s) {
      return Left(ErrorDetails(error: e, stackTrace: s, message: 'Unexpected error during Apple sign-in.'));
    }
  }

  /// Map FirebaseAuthException codes to user-friendly messages (and hints for you).
  String _mapFirebaseAuthCodeToMessage(String code) {
    switch (code) {
      case 'provider-already-linked':
        return 'Apple is already linked to this user.';
      case 'credential-already-in-use':
        return 'This Apple account is already linked to another user.';
      case 'account-exists-with-different-credential':
        return 'An account exists with the same email but a different sign-in method. Sign in with that method and link Apple in settings.';
      case 'invalid-credential':
        return 'Invalid or expired credential (possible nonce mismatch). Please try again.';
      case 'operation-not-allowed':
        return 'Apple sign-in is not enabled in Firebase. Enable the provider in Firebase Console.';
      case 'user-disabled':
        return 'This user account has been disabled.';
      case 'invalid-email':
        return 'The email address is invalid.';
      default:
        return 'Authentication failed ($code). Please try again.';
    }
  }

  @override
  Future<Either<ErrorDetails, String>> authenticateWithGoogle() async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn.instance;

      // Required async initialization in v7
      await googleSignIn.initialize();

      // Check if authenticate() is supported on the platform
      if (!googleSignIn.supportsAuthenticate()) {
        return Left(ErrorDetails(message: "Google Sign-In authenticate method is not supported on this platform.", stackTrace: StackTrace.current));
      }

      // Authenticate with Google using the new v7 method

      final GoogleSignInAccount googleUser = await googleSignIn.authenticate(scopeHint: ['email']);

      // Get authorization for Firebase scopes
      final GoogleSignInAuthorizationClient authClient = googleSignIn.authorizationClient;
      final GoogleSignInClientAuthorization? authorization = await authClient.authorizationForScopes(['email']);

      // Get authentication tokens (now synchronous in v7)
      final GoogleSignInAuthentication googleAuth = googleUser.authentication;

      // Create Firebase credential - use authorization token if available, fallback to googleAuth
      final fauth.OAuthCredential credential = fauth.GoogleAuthProvider.credential(accessToken: authorization?.accessToken, idToken: googleAuth.idToken);

      // Sign in to Firebase
      userCredential = await fauth.FirebaseAuth.instance.signInWithCredential(credential);

      // Get Firebase ID token
      final String? idToken = await userCredential?.user?.getIdToken();

      if (idToken == null) {
        return Left(ErrorDetails(message: "Failed to retrieve Firebase ID token.", stackTrace: StackTrace.current));
      }
      email = userCredential?.user?.email;

      return Right(idToken);
    } on GoogleSignInException catch (e, stackTrace) {
      // Handle Google Sign-In specific exceptions with detailed messages

      final String message = _getGoogleSignInErrorMessage(e);
      return Left(ErrorDetails(error: e, stackTrace: stackTrace, message: message));
    } on fauth.FirebaseAuthException catch (e, stackTrace) {
      // Handle Firebase-specific errors
      return Left(ErrorDetails(error: e, stackTrace: stackTrace, message: 'Sorry something went wrong !'));
    } catch (e, stackTrace) {
      // Catch-all for other unexpected errors
      return Left(ErrorDetails(error: e, stackTrace: stackTrace, message: "An unexpected error occurred !"));
    }
  }

  // Helper method to convert GoogleSignInException to user-friendly messages
  String _getGoogleSignInErrorMessage(GoogleSignInException exception) {
    switch (exception.code) {
      case GoogleSignInExceptionCode.canceled:
        return 'Sign-in was cancelled. Please try again if you want to continue.';
      case GoogleSignInExceptionCode.interrupted:
        return 'Sign-in was interrupted. Please try again.';
      case GoogleSignInExceptionCode.clientConfigurationError:
        return 'There is a configuration issue with Google Sign-In. Please contact support.';
      case GoogleSignInExceptionCode.providerConfigurationError:
        return 'Google Sign-In is currently unavailable. Please try again later or contact support.';
      case GoogleSignInExceptionCode.uiUnavailable:
        return 'Google Sign-In is currently unavailable. Please try again later or contact support.';
      case GoogleSignInExceptionCode.userMismatch:
        return 'There was an issue with your account. Please sign out and try again.';
      case GoogleSignInExceptionCode.unknownError:
        return 'An unexpected error occurred during Google Sign-In. Please try again.';
    }
  }

  // Future<Either<ErrorDetails, bool>> verifyWithGoogle() async => (await authenticateWithGoogle()).fold(
  //   (error) => Left(error),
  //   (token) async => (await verifyIdTokenAndIsLogin(token)).fold((error) => Left(error), (isValid) => Right(isValid)),
  // );
  Future<Either<ErrorDetails, ({bool isLogin, String idToken})>> socialVerify(final Social provider) async => (provider == Social.google
              ? await authenticateWithGoogle()
              : provider == Social.apple
                  ? await authenticateWithApple()
                  : Either.left(ErrorDetails(stackTrace: StackTrace.current, message: 'Provider not Supported')))
          .fold(
        Left.new,
        (final token) async => (await verifyIdTokenAndIsLogin(
          token,
          userCredential?.user?.displayName,
        ))
            .fold(Left.new, (final isValid) => Right((isLogin: isValid, idToken: token))),
      );

  @override
  Future<Either<ErrorDetails, String>> sendForgotPasswordOTP(final String phoneInput) {
    final Map<String, String> payload = <String, String>{'phone': phoneInput};
    return Request.post<String>(
      path: Api.forgotPasswordOTP,
      payload: payload,
      onSuccess: (final json) {
        if (json['token'] != null) {
          Request.clientService.token = json['token'];
        }
        return json['message'];
      },
    );
  }

  @override
  Future<Either<ErrorDetails, String>> verifyForgotPasswordOTP(final String otp, final String phoneInput, {final String? token}) {
    final Map<String, String> payload = <String, String>{'otp': otp, 'phone': phoneInput, 'token': token ?? Request.clientService.token};
    return Request.post<String>(
      path: Api.verfyForgotOTP,
      payload: payload,
      onSuccess: (final json) {
        if (json['authToken'] != null) {
          Request.clientService.token = json['authToken'];
        }
        return json['message'];
      },
    );
  }

  @override
  Future<Either<ErrorDetails, String>> resetPassword(final String password) {
    final Map<String, String?> payload = <String, String?>{'password': password, 'device_id': userDeviceId, 'token': Request.clientService.token};
    return Request.put<String>(path: Api.updatePassword, payload: payload, onSuccess: (final json) => json['message']);
  }

  @override
  Future<Either<ErrorDetails, String>> deleteAccount(DeleteAccount deleteAccount) =>
      Request.delete(path: Api.account, payload: deleteAccount.toReasonJson(), onSuccess: (final json) => json['message']);

  @override
  Future<Either<ErrorDetails, DeleteAccount>> sentOtp() =>
      Request.post<DeleteAccount>(path: Api.sendOtp, payload: {}, onSuccess: (final json) => DeleteAccount.fromJson(json["data"]));

  @override
  Future<Either<ErrorDetails, bool>> verifyOtp(DeleteAccount deleteAccount) =>
      Request.post<bool>(path: Api.sendOtp, payload: deleteAccount.toJson(), onSuccess: (final json) => true);

  // updateFCMToken() {
  //   if ((fcmToken != null) && (fcmToken != guser!.fcmToken)) {
  //     updateUserInfo();
  //   }
  // }

  // @override
  // Future<Either<ErrorDetails, Map<String, dynamic>>> updateUserInfo({String? fullName, String? fcmToken, File? file, String? feild}) {
  //   final payload = {if (fullName != null) "full_name": fullName, if (fcmToken != null) "fcm_token": fcmToken};
  //   return Request.upload<Map<String, dynamic>>(
  //     path: Api.updateUserInfo,
  //     payload: payload,
  //     file: file,
  //     onSuccess: (json) => json['data'],
  //     feild: feild,
  //     method: "PUT",
  //   );
  // }
}
