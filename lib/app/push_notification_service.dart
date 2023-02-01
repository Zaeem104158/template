import 'dart:io';
import 'values/constants.dart';
import 'package:flutter/widgets.dart';
import '../shared/utils/extensions.dart';
import 'exports/generated_values_export.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:thrive_mobile_app/shared/preference/preference_manager.dart';
import 'package:thrive_mobile_app/features/notification/widget/notification_page.dart';

class PushNotificationService {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initialise(
    BuildContext context,
    PreferenceManager preferenceManager,
    Function(int unreadCounter) callback,
  ) async {
    if (Platform.isIOS) {
      try {
        final settings = await _firebaseMessaging.getNotificationSettings();

        if (settings.authorizationStatus != AuthorizationStatus.authorized) {
          await _firebaseMessaging.requestPermission(
            alert: true,
            announcement: false,
            badge: true,
            carPlay: false,
            criticalAlert: false,
            provisional: false,
            sound: true,
          );
        }
      } catch (e) {
        e.toString().showSnackBar(context);
      }
    }

    //onLaunch(completely closed - not in background)
    _firebaseMessaging.getInitialMessage().then((RemoteMessage? message) {
      _sendFromNotificationClick(
        context,
        message,
        preferenceManager,
        callback,
      );
    });

    //onResume(app in background)
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage? message) {
      _sendFromNotificationClick(
        context,
        message,
        preferenceManager,
        callback,
      );
    });

    //onMessage(app in open)
    FirebaseMessaging.onMessage.listen((RemoteMessage? message) {
      _sendFromNotificationClick(
        context,
        message,
        preferenceManager,
        callback,
        isNavigate: false,
      );
    });
  }

  Future<void> _sendFromNotificationClick(
    BuildContext context,
    RemoteMessage? message,
    PreferenceManager preferenceManager,
    Function(int unreadCounter) callback, {
    bool isNavigate = true,
  }) async {
    final data = message?.data;

    if (data != null) {
      final String? body = data['body'];
      final String? type = data['type'];
      final unreadCounter = int.tryParse(data['unreadCount']) ?? 0;

      preferenceManager.getString(keyJwtToken).then((jwt) {
        if (jwt != null) {
          if (unreadCounter > 0) {
            callback(unreadCounter);
          }

          if (isNavigate && !type.isBlank) {
            NotificationPage.notificationNavigateToRoute(context, type!);
          } else if (body != null) {
            "$body".showSnackBar(context);
          }
        } else {
          LocaleKeys.somethingWentWrong.tr().showSnackBar(context);
        }
      }).catchError((onError) {
        "${onError.toString()}".showSnackBar(context);
      });
    }
  }
}
