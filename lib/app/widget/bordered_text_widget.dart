import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import '../../app/values/app_colors.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';

class BorderedTextWidget extends StatelessWidget {
  final Color color;
  final String? text;
  final double? width;
  final double fontSize;
  final double borderSize;
  final bool forceDarkMode;
  final EdgeInsets padding;
  final double borderRadius;
  final TextAlign textAlign;
  final Color backgroundColor;
  final FontWeight? fontWeight;

  const BorderedTextWidget(
    this.text, {
    Key? key,
    this.width,
    this.fontWeight,
    this.fontSize = 11,
    this.borderSize = 0.8,
    this.borderRadius = 10,
    this.color = colorPrimary,
    this.forceDarkMode = false,
    this.textAlign = TextAlign.center,
    this.backgroundColor = colorWhite,
    this.padding = const EdgeInsets.fromLTRB(6, 3, 6, 2),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.isDarkMode;

    return Container(
      key: key,
      width: width,
      padding: padding,
      child: Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
        ),
      ),
      decoration: BoxDecoration(
        border: borderSize > 0
            ? Border.all(
                color: color, // set border color
                width: borderSize,
              )
            : null, // set border width
        borderRadius: BorderRadius.all(
          Radius.circular(
            borderRadius,
          ),
        ),
        color: isDarkMode && (backgroundColor == colorWhite || forceDarkMode)
            ? colorWhite
            : backgroundColor,
      ),
    );
  }
}
