import 'package:flutter/material.dart';
import 'package:thrive_mobile_app/app/values/app_colors.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';

import 'text_widget.dart';
import 'bordered_text_widget.dart';
import '../../app/values/size_config.dart';
import '../../app/exports/generated_values_export.dart';

class ErrorRetryWidget extends StatelessWidget {
  const ErrorRetryWidget(
    this.error, {
    Key? key,
    this.divider = 1,
    this.onPressed,
  }) : super(key: key);

  final String error;
  final double divider;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.isDarkMode;

    return SizedBox(
      key: key,
      width: SizeConfig.getScreenWidth(context),
      height: SizeConfig.getScreenHeight(context) / divider,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidget(
              error,
            ),
            const SizedBox(
              height: 8,
            ),
            if (onPressed != null) ...[
              GestureDetector(
                onTap: onPressed,
                child: BorderedTextWidget(
                  LocaleKeys.tryAgain.tr(),
                  fontSize: 16,
                  borderRadius: 13,
                  padding: const EdgeInsets.fromLTRB(12, 5, 12, 5),
                  color: isDarkMode ? colorWhite : colorPrimary,
                  backgroundColor: isDarkMode ? colorDarkMode : colorWhite,
                ),
              )
            ],
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
