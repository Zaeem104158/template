import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/app/values/app_colors.dart';
import '../../app/values/app_values.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:thrive_mobile_app/app/values/app_fonts.dart';
import 'package:thrive_mobile_app/app/values/constants.dart';
import 'package:thrive_mobile_app/app/widget/text_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';
import 'package:thrive_mobile_app/app/provider/core_provider.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';

class Debouncer {
  Debouncer({this.milliseconds = defaultDebounceTimeInMilliSeconds});
  Timer? _debounce;
  final int milliseconds;

  void call(VoidCallback callback) {
    if (_debounce?.isActive ?? false) {
      _debounce?.cancel();
    }

    _debounce = Timer(
      Duration(milliseconds: milliseconds),
      callback,
    );
  }

  void dispose() {
    _debounce?.cancel();
    _debounce = null;
  }
}

void openUrl(
  BuildContext context,
  String? value, {
  bool sms = false,
  bool call = false,
  LaunchMode launchMode: LaunchMode.externalApplication,
}) async {
  if (value != null) {
    if (call) {
      value = "tel:$value";
    } else if (sms) {
      value = "sms:$value";
    }

    if (await canLaunchUrl(Uri.parse(value))) {
      await launchUrl(
        Uri.parse(value),
        mode: launchMode,
      );
    } else {
      "Could not launch: $value".showSnackBar(context);
    }
  }
}

void closeSoftKeyBoard() {
  FocusManager.instance.primaryFocus?.unfocus();
}

Future<void> logoutUser(Reader reader) async {
  final _preferenceManager = reader(preferenceManagerProvider);

  try {
    int userId = await _preferenceManager.getInt(keyUserId);
    if (userId > 0) {
      subscribeUnSubscribeTopicToFirebase(
        userId,
        isUnSubscribe: true,
      );
    }
  } catch (_) {}

  await _preferenceManager.clear();
  reader(loggedInUserSateProvider.notifier).state = null;
}

Future<void> subscribeUnSubscribeTopicToFirebase(
  var userId, {
  BuildContext? context,
  bool isUnSubscribe = false,
}) async {
  try {
    if (isUnSubscribe) {
      await FirebaseMessaging.instance.unsubscribeFromTopic("$userId");
    } else {
      await FirebaseMessaging.instance.subscribeToTopic("$userId");
    }
  } catch (e) {
    if (context != null) {
      "Firebase subscription error: ${e.toString()}".showSnackBar(context);
    }
  }
}

void showAlertDialog(
  BuildContext context,
  String title, {
  String? body,
  String? confirmText,
  String? cancelText,
  barrierDismissible = true,
  Function(bool onConfirm, bool onCancel)? clickEvent,
}) {
  AlertDialog alert = AlertDialog(
    title: Text(title),
    contentPadding: EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 8,
    ),
    content: body != null
        ? Text(body)
        : Text("${LocaleKeys.alertWarning.tr()} ${title.toLowerCase()}?"),
    actions: [
      TextButton(
        child: Text(
          cancelText ?? LocaleKeys.cancel.tr(),
          style: TextStyle(
            fontSize: semiTextFontSize,
            color: context.isDarkMode ? Colors.orangeAccent : Colors.redAccent,
          ),
        ),
        onPressed: () {
          Navigator.of(context).pop();
          if (clickEvent != null) clickEvent(false, true);
        },
      ),
      if (!confirmText.isBlank) ...[
        TextButton(
          child: Text(
            confirmText!,
            style: TextStyle(
              color: context.isDarkMode ? colorWhite : colorPrimary,
              fontSize: semiTextFontSize,
            ),
          ),
          onPressed: () {
            Navigator.of(context).pop();
            if (clickEvent != null) clickEvent(true, false);
          },
        ),
      ]
    ],
  );

  showDialog(
    context: context,
    barrierDismissible: barrierDismissible,
    builder: (BuildContext dialogContex) {
      return alert;
    },
  );
}

void showImageDialog(
  BuildContext context,
  String? imageUrl, {
  bool isNetworkImage = true,
  bool showOpenOriginal = true,
  Color? backgroundColor,
}) {
  if (!imageUrl.isBlank) {
    showDialog<AlertDialog>(
      context: context,
      useSafeArea: true,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: backgroundColor,
          content: SingleChildScrollView(
            child: Wrap(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: isNetworkImage
                        ? CachedNetworkImage(
                            imageUrl: imageUrl!,
                            placeholder: (context, url) =>
                                Assets.icons.defaultIcon.image(),
                            errorWidget: (context, url, error) =>
                                Assets.icons.defaultIcon.image(),
                          )
                        : FadeInImage(
                            placeholder: AssetImage(
                              Assets.icons.defaultIcon.path,
                            ),
                            image: FileImage(File(imageUrl!)),
                          ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: TextWidget(
                          LocaleKeys.close.tr(),
                          textAlign: TextAlign.start,
                          padding: EdgeInsets.zero,
                          color: context.isDarkMode
                              ? Colors.orangeAccent
                              : Colors.redAccent,
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      if (showOpenOriginal) ...[
                        SizedBox(
                          width: 8,
                        ),
                        Flexible(
                          child: TextWidget(
                            LocaleKeys.openOriginal.tr(),
                            padding: EdgeInsets.zero,
                            textAlign: TextAlign.end,
                            onPressed: () {
                              Navigator.of(context).pop();
                              openUrl(context, imageUrl);
                            },
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
