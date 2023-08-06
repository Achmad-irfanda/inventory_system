

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:inventory_system/apps_common_libs.dart';
import 'package:inventory_system/main.dart';
import 'package:logger/logger.dart';

Future<void> handleBackgorundMessage(RemoteMessage remoteMessage) async {
  var logger = Logger();
  logger.i('Title: ${remoteMessage.notification?.title}');
  logger.i('Body: ${remoteMessage.notification?.body}');
  logger.i('Payload: ${remoteMessage.data}');
}

void handleMessage(RemoteMessage? remoteMessage) async {
  if (remoteMessage == null) return; 
  navigatorKey.currentState?.pushNamed(
    'apps_home_page', 
    arguments: remoteMessage
  );

}

void initPushNotification() async {
  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );
  FirebaseMessaging.instance.getInitialMessage().then(handleMessage);
  FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
  FirebaseMessaging.onBackgroundMessage(handleBackgorundMessage);
}

class NotificationApi {
  final firebaseMessanging = FirebaseMessaging.instance;
  var logger = Logger();
  Future<void> initNotification() async {
    await firebaseMessanging.requestPermission();
    final fcmToken = await firebaseMessanging.getToken();
    logger.i("token: $fcmToken");
    initPushNotification();
  }
}
