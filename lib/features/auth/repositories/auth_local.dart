// ignore_for_file: unawaited_futures

import 'dart:convert';
import 'dart:developer';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/router/route.dart';
import '../../../util/api/call.dart';
import '../../../util/variable.dart';
import '../model/user.dart';
import '../model/user_detail.dart';

const String _lastNotificationKey = 'last_fcm_notification';

// ignore: avoid_classes_with_only_static_members
class AuthLocalRepo {
  static late SharedPreferences prefs;
  // AuthLocalRepo() {
  //   init();
  // }
  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
    // await getUser();
  }

  // Save the last notification to local storage
  static Future<void> saveLastNotification(RemoteMessage message) async {
    try {
      final Map<String, dynamic> notificationData = {
        'messageId': message.messageId,
        'title': message.notification?.title,
        'body': message.notification?.body,
        'data': message.data,
        'timestamp': DateTime.now().millisecondsSinceEpoch,
        'from': message.from,
        'category': message.category,
        'collapseKey': message.collapseKey,
        'contentAvailable': message.contentAvailable,
        'mutableContent': message.mutableContent,
        'senderId': message.senderId,
        'threadId': message.threadId,
        'ttl': message.ttl,
      };

      final String jsonString = json.encode(notificationData);
      await prefs.setString(_lastNotificationKey, jsonString);

      log('Last notification saved successfully');
    } catch (e) {
      log('Error saving last notification: $e');
    }
  }

  // Get the last FCM notification
  static Future<Map<String, dynamic>?> getLastNotification() async {
    try {
      final String? jsonString = prefs.getString(_lastNotificationKey);

      if (jsonString != null) {
        final Map<String, dynamic> notificationData = json.decode(jsonString);
        return notificationData;
      }

      return null;
    } catch (e) {
      log('Error retrieving last notification: $e');
      return null;
    }
  }

  // Get formatted last notification with readable timestamp
  static Future<Map<String, dynamic>?> getFormattedLastNotification() async {
    final Map<String, dynamic>? notification = await getLastNotification();

    if (notification != null) {
      // Convert timestamp to readable format
      final int timestamp = notification['timestamp'] ?? 0;
      final DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp);
      notification['formattedTimestamp'] = dateTime.toString();

      return notification;
    }

    return null;
  }

  // Clear the last notification from storage
  static Future<void> clearLastNotification() async {
    try {
      await prefs.remove(_lastNotificationKey);
      log('Last notification cleared successfully');
    } catch (e) {
      log('Error clearing last notification: $e');
    }
  }

  // Check if there's a last notification available
  static Future<bool> hasLastNotification() async => prefs.containsKey(_lastNotificationKey);

  static UserDetail? getUser() {
    final String? jsonString = prefs.getString('userRecord');
    //   Clipboard.setData(ClipboardData(text: jsonString ?? ''));
    log(jsonString ?? 'No Local Data');
    if (jsonString != null) {
      userDetail = userDetailFromMap(jsonString);
      guser = userDetail?.user;
      Request.clientService.token = userDetail?.accessToken ?? '';
    }
    if (userDetail != null) {
      return userDetail;
    } else {
      Request.clientService.token = '';
      return null;
    }

    //return null;
  }

  // static void saveModel(final UserDetail model) {
  //   final String jsonString = jsonEncode(model.toJson());
  //   prefs.setString('userRecord', jsonString);
  // }

  // static Future<void> saveModelString(final String model) async {
  //   await prefs.setString('userRecord', model);
  // }

  static UserDetail saveUserDetailMap(final Map<String, dynamic> model) {
    prefs.setString('userRecord', jsonEncode(model));

    userDetail = UserDetail.fromJson(model);
    guser = userDetail?.user;
    Request.clientService.token = userDetail?.accessToken ?? Request.clientService.token;
    //   updateFCMToken();
    return userDetail!;
  }

  static UserDetail saveUseMap(final Map<String, dynamic> model) {
    guser = User.fromJson(model);
    userDetail = userDetail!.copyWith(user: guser);
    prefs.setString('userRecord', jsonEncode(userDetail!.toJson()));

    Request.clientService.token = userDetail?.accessToken ?? Request.clientService.token;

    return userDetail!;
  }

  static UserDetail saveUserMap(final Map<String, dynamic> model) {
    final UserDetail? x = userDetail?.copyWith(user: User.fromJson(model));
    prefs.setString('userRecord', jsonEncode(x?.toJson()));
    userDetail = x;
    guser = userDetail?.user;
    Request.clientService.token = userDetail?.accessToken ?? Request.clientService.token;
    return userDetail!;
  }

  static Future<void> removeUser() async {
    appStarted = false;
    await prefs.clear();
    if (prefs.containsKey('userRecord')) {
      await prefs.remove('userRecord');
    }
    guser = null;
    userDetail = null;
    // Ensure no further requests are sent with an invalid/old token
    Request.clientService.token = '';
    final String? route = navigatorKey.currentContext == null ? null : ModalRoute.of(navigatorKey.currentContext!)?.settings.name;
    if (route != AppRoutes.sign && route != AppRoutes.login) {
      navigatorKey.currentState?.pushNamedAndRemoveUntil(AppRoutes.sign, (Route<dynamic> route) => false);
      navigatorKey.currentState?.pushNamed(AppRoutes.login);
    }
    // await FirebaseMessaging.instance.deleteToken();
    // await FirebaseMessaging.instance.deleteToken();
    // await FirebaseMessaging.instance.getToken();
    // await FirebaseMessaging.instance.getAPNSToken();
  }

  // static getuseronline() async {
  //   http.Response response = await http.get(Uri.parse(ApiString.getProfile(userModal.userId!)));
  //   if (response.statusCode == 200) {
  //     userModal.userData = UserData.fromMap(jsonDecode(response.body)["userRecord"]);
  //     saveModel(userModal);
  //     return userModal;
  //   } else {
  //     return null;
  //   }
  // }

  // static getuseronlinewithid() async {
  //   http.Response response = await http.get(Uri.parse(ApiString.getProfile(userModal.userId!)));
  //   if (response.statusCode == 200) {
  //     userModal.userData = UserData.fromMap(jsonDecode(response.body)["userRecord"]);
  //     saveModel(userModal);
  //     return userModal;
  //   } else {
  //     return null;
  //   }
  // }
}

// import 'dart:developer';

// import 'package:phone_numbers_parser/phone_numbers_parser.dart';

// class PhoneNumberl {
//   static String? extractCountryCode(String phoneNumber) {
//     try {
//       final p = PhoneNumber.parse(phoneNumber);

//       // Get the region code
//       final countryCode = p.isoCode.name;

//       return countryCode;
//     } catch (e) {
//       log('Error parsing phone number: $e');
//       return null;
//     }
//   }
// }
