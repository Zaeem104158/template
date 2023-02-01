import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';

import '../exports/app_values_export.dart';

class TextWidget extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final Color? color;
  final double opacity;
  final String? font;
  final int? maxLines;
  final bool forceDarkMode;
  final bool isHideKeyboard;
  final TextAlign textAlign;
  final FontWeight fontWeight;
  final EdgeInsets padding;
  final TextOverflow? textOverflow;
  final VoidCallback? onPressed;
  final TextDecoration? textDecoration;

  const TextWidget(
    this.text, {
    Key? key,
    this.maxLines,
    this.onPressed,
    this.opacity = 1,
    this.textOverflow,
    this.color = colorText,
    this.font = defaultFont,
    this.isHideKeyboard = true,
    this.forceDarkMode = false,
    this.fontSize = textFontSize,
    this.textAlign = TextAlign.center,
    this.fontWeight = regularFontWeight,
    this.padding = const EdgeInsets.fromLTRB(20, 8, 20, 8),
    this.textDecoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return onPressed != null
        ? GestureDetector(
            onTapUp: (details) {
              if (isHideKeyboard) {
                FocusManager.instance.primaryFocus?.unfocus();
              }
            },
            child: _getTextWidget(context),
            onTap: onPressed,
          )
        : _getTextWidget(context);
  }

  Widget _getTextWidget(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(
        text ?? "",
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: textOverflow,
        style: GoogleFonts.getFont(
          font ?? defaultFont,
          fontSize: fontSize,
          fontWeight: fontWeight,
          decoration: textDecoration,
          color: context.isDarkMode && (color == colorText || forceDarkMode)
              ? colorWhite.withOpacity(opacity)
              : color?.withOpacity(opacity),
        ),
      ),
    );
  }
}
