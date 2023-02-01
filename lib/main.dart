import 'dart:io';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:easy_localization/easy_localization.dart';

import 'app/my_app.dart';
import 'shared/network/http_override.dart';
import 'translations/codegen_loader.g.dart';
import 'shared/network/provider_logger.dart';
import 'package:device_preview/device_preview.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp();

  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  HttpOverrides.global = MyHttpOverrides();

  FlutterError.onError = (details) {
    if (kDebugMode) {
      log(details.exceptionAsString(), stackTrace: details.stack);
    }
  };

  runApp(
    EasyLocalization(
      path: 'assets/translations',
      supportedLocales: const [
        Locale('bn'),
      ],
      fallbackLocale: const Locale('en'),
      assetLoader: const CodegenLoader(),
      child: ProviderScope(
        observers: [ProviderLogger()],
        // child: MyApp(savedThemeMode),
        child: DevicePreview(
          enabled: !kReleaseMode,
          builder: (context) => MyApp(savedThemeMode),
        ),
      ),
    ),
  );
}
