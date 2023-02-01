import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';
import 'package:thrive_mobile_app/app/values/app_colors.dart';
import 'package:thrive_mobile_app/app/widget/appbar_widget.dart';
import 'package:thrive_mobile_app/app/widget/circular_progress_widget.dart';
import 'package:thrive_mobile_app/app/widget/error_retry_widget.dart';
import 'package:thrive_mobile_app/app/widget/text_widget.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';
import 'provider/theme_provider.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({Key? key}) : super(key: key);

  final darkMode = "dark";
  final lightMode = "light";
  final systemMode = "system";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeStateAsync = ref.watch(themeProvider);

    return themeStateAsync.when(
      loading: () => CircularProgressWidget(),
      error: (object, stackTrace) => ErrorRetryWidget(
        "${object.toString()}",
        onPressed: () => _refreshThemeProvider(ref),
      ),
      data: (themeState) {
        return Scaffold(
          appBar: AppBarWidget(
            title: LocaleKeys.settings.tr(),
            isMenuIcon: true,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 8,
                  ),
                  TextWidget(
                    "Choose App Theme",
                    textAlign: TextAlign.start,
                    padding: const EdgeInsets.fromLTRB(8, 8, 20, 12),
                  ),
                  Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: colorGrey.withOpacity(
                          context.isDarkMode ? 0.1 : 0.9,
                        ),
                        // width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        RadioListTile<String>(
                          title: Text("Light Mode"),
                          value: lightMode,
                          groupValue: themeState,
                          onChanged: (value) => _update(context, ref, value),
                        ),
                        RadioListTile<String>(
                          title: Text("Dark Mode"),
                          value: darkMode,
                          groupValue: themeState,
                          onChanged: (value) => _update(context, ref, value),
                        ),
                        RadioListTile<String>(
                          title: Text("System Mode"),
                          value: systemMode,
                          groupValue: themeState,
                          onChanged: (value) => _update(context, ref, value),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _update(BuildContext context, WidgetRef ref, String? themeMode) {
    themeMode ??= lightMode;
    final adaptiveTheme = AdaptiveTheme.of(context);

    if (themeMode == darkMode) {
      adaptiveTheme.setDark();
    } else if (themeMode == lightMode) {
      adaptiveTheme.setLight();
    } else {
      adaptiveTheme.setSystem();
    }

    _refreshThemeProvider(ref);
  }

  void _refreshThemeProvider(WidgetRef ref) {
    ref.refresh(themeProvider);
  }
}
