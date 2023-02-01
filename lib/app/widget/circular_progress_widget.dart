import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';

class CircularProgressWidget extends StatelessWidget {
  const CircularProgressWidget({
    Key? key,
    this.scale = 0.7,
    this.padding = const EdgeInsets.only(top: 8, bottom: 12),
  }) : super(key: key);

  final EdgeInsets padding;
  final double scale;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.isDarkMode;
    final themeData = AdaptiveTheme.of(context).theme;

    return Padding(
      padding: padding,
      child: Transform.scale(
        scale: scale,
        child: CircularProgressIndicator(
          color: isDarkMode ? themeData.indicatorColor : null,
        ),
      ),
    );
  }
}
