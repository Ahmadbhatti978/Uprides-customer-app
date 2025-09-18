import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import '../../../core/failure/failure.dart';
import '../../../core/router/route.dart';
import '../../../util/utils.dart';
import '../../../util/variable.dart';
import '../../booking/book_ride/provider/ride_data.dart';
import '../model/user_detail.dart';
import '../repositories/auth_remote.dart';
import '../veiw/widget/dialog.dart';

// void continueWithGoogle(AuthRemoteRepository authRemoteRepository, BuildContext context) async => (await authRemoteRepository.verifyWithGoogle()).fold(
//   (error) => showSnackBar(error.toString()),
//   (s) =>
//       s
//           ? authRemoteRepository.phone == null && userDetail != null
//               ? Navigator.pushNamedAndRemoveUntil(context, AppRoutes.bottomNavigationScreen, (Route<dynamic> route) => false)
//               : showDialog(
//                 context: context,
//                 builder:
//                     (context) => DialogVeiw(
//                       isLogin: true,
//                       isEmail: false,
//                       phoneNumber: authRemoteRepository.phone ?? "",
//                       emailController: TextEditingController(),
//                       pinController: TextEditingController(),
//                       authRemoteRepository: authRemoteRepository,
//                       isSocial: true,
//                     ),
//               )
//           : Navigator.pushNamed(context, AppRoutes.register, arguments: "GOOGLE"),
// );
Future<void> social(final AuthRemoteRepository authRemoteRepository, final BuildContext context, final Social provider, {WidgetRef? ref}) async {
  showLoading(context: context);
  authRemoteRepository.reset();
  final Either<ErrorDetails, ({String idToken, bool isLogin})> result = await authRemoteRepository.socialVerify(provider);
  result.fold(
    (final ErrorDetails error) {
      Navigator.pop(context, true);
      showSnackBar(error.toString());
    },
    (final tuple) {
      Navigator.pop(context, true);

      if (tuple.isLogin) {
        if (authRemoteRepository.phone == null && userDetail != null) {
          currentRoute = AppRoutes.bottomNavigationScreen;
          if (ref != null) {
            rideId = userDetail?.ride?.rideId;
            if (rideId != null) ref.refresh(RideDataProvider(rideId!));
          }
          Navigator.pushNamedAndRemoveUntil(context, AppRoutes.bottomNavigationScreen, (final Route<dynamic> route) => false);
        } else {
          showDialog(
            context: context,
            builder:
                (final BuildContext context) => DialogView(
                  phoneNumber: authRemoteRepository.phone ?? '',
                  pinController: TextEditingController(),

                  //    resendOtp: () => authRemoteRepository.verifyIdTokenAndIsLogin(token).then((res) => res.fold((error) => false, (data) => true)),
                  verifyOtp:
                      (String value) => authRemoteRepository
                          .verifyPhoneLoginOTP(authRemoteRepository.phone!, value)
                          .then(
                            (final Either<ErrorDetails, UserDetail> result) => result.fold((error) => false, (_) {
                              Navigator.pushNamedAndRemoveUntil(context, AppRoutes.bottomNavigationScreen, (_) => false);
                              return true;
                            }),
                          ),
                ),
          );
        }
      } else {
        Navigator.pushNamed(context, AppRoutes.register, arguments: provider);
      }
    },
  );
}
