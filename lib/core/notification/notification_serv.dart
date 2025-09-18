import 'dart:developer';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  static const String channelId = 'Channel_id';
  static const String channelName = 'Channel_title';
  static const String channelDescription = 'This channel is used for important notifications.';

  final FlutterLocalNotificationsPlugin _notificationsPlugin = FlutterLocalNotificationsPlugin();

  static const AndroidNotificationChannel _channel = AndroidNotificationChannel(
    channelId,
    channelName,
    description: channelDescription,
    importance: Importance.max,
    bypassDnd: true,
  );

  Future<void> initialize() async {
    try {
      await _initializeNotificationChannel();
      await _initNotification();
      log('Notification service initialized successfully.', name: "NotificationService");
    } catch (e) {
      log('Error initializing notification service:', name: "NotificationService", error: e);
    }
  }

  Future<void> _initializeNotificationChannel() async {
    final AndroidFlutterLocalNotificationsPlugin? androidPlugin =
        _notificationsPlugin.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();
    // Android channel setup
    if (androidPlugin != null) {
      await androidPlugin.createNotificationChannel(_channel);
    }

    // final IOSFlutterLocalNotificationsPlugin? iosPlugin = _notificationsPlugin.resolvePlatformSpecificImplementation<IOSFlutterLocalNotificationsPlugin>();

    // if (iosPlugin != null) {
    //   await iosPlugin.
    // }
    // Request notification permissions (iOS and Android 13+)
    await _requestPermissions();
  }

  Future<void> _requestPermissions() async {
    final AndroidFlutterLocalNotificationsPlugin? androidPlugin =
        _notificationsPlugin.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();
    final IOSFlutterLocalNotificationsPlugin? iosPlugin = _notificationsPlugin.resolvePlatformSpecificImplementation<IOSFlutterLocalNotificationsPlugin>();

    if (androidPlugin != null) {
      // Request permissions for Android 13+
      await androidPlugin.requestNotificationsPermission();
    }

    if (iosPlugin != null) {
      // Request iOS permissions
      await iosPlugin.requestPermissions(alert: true, badge: true, sound: true, critical: true, provisional: true);
    }
  }

  Future<void> _initNotification() async {
    // Change '@mipmap/ic_launcher' to '@mipmap/ic_launcher'
    const AndroidInitializationSettings androidSettings = AndroidInitializationSettings('@drawable/trans_ic');
    const DarwinInitializationSettings iosSettings = DarwinInitializationSettings(requestCriticalPermission: true);

    const InitializationSettings initSettings = InitializationSettings(android: androidSettings, iOS: iosSettings);

    await _notificationsPlugin.initialize(
      initSettings,
      onDidReceiveNotificationResponse: _onDidReceiveNotificationResponse,
      //  onDidReceiveBackgroundNotificationResponse: _onDidReceiveBackgroundNotificationResponse,
    );
  }

  Future<void> _onDidReceiveNotificationResponse(final NotificationResponse response) async {
    // Handle notification response (tap, dismiss actions, etc.)
    log('Notification tapped. Payload: ${response.payload}', name: "NotificationService");
    // Perform actions based on the payload (e.g., navigate to a screen)
  }

  @pragma('vm:entry-point') // Important for background execution
  Future<void> _onDidReceiveBackgroundNotificationResponse(final NotificationResponse response) async {
    // Handle notification response (tap, dismiss actions, etc.)
    log('BackGround Notification tapped. Payload: ${response.payload}', name: "NotificationService");
    // Perform actions based on the payload (e.g., navigate to a screen)
  }

  void showNotification(final RemoteMessage message, {final String? title, final String? body}) {
    final RemoteNotification? notification = message.notification;
    if (notification == null) return;

    final AndroidNotificationDetails androidDetails = AndroidNotificationDetails(
      _channel.id,
      _channel.name,
      channelDescription: _channel.description,
      importance: Importance.max,
      priority: Priority.max,
      ticker: 'ticker',
      enableLights: true,

      icon: 'trans_ic', // Use the new notification icon
      styleInformation: BigTextStyleInformation(body ?? notification.body ?? ''),
    );

    const DarwinNotificationDetails iosDetails = DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
      //    attachments: [DarwinNotificationAttachment(filePath)]
    );

    final NotificationDetails platformDetails = NotificationDetails(android: androidDetails, iOS: iosDetails);

    _notificationsPlugin.show(
      notification.hashCode,
      title ?? notification.title,
      body ?? notification.body,
      platformDetails,
      payload: message.data['payload'], // Pass any additional payload here
    );
  }

  Future<void> cancelAllNotifications() async {
    await _notificationsPlugin.cancelAll();
  }
}
