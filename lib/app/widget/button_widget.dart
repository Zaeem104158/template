import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thrive_mobile_app/shared/utils/util.dart';

import 'loading_widget.dart';
import '../exports/app_values_export.dart';

class ButtonWidget extends StatelessWidget {
  final String? text;
  final String font;
  final double? width;
  final Color? textColor;
  final double? fontSize;
  final bool isLoading;
  final bool isHideKeyboardOnTap;
  final EdgeInsets padding;
  final Color borderColor;
  final EdgeInsets stylePadding;
  final String? prefixImageUrl;
  final Icon? prefixIcon;
  final Size? minimumSize;
  final Color? buttonColor;
  final BorderSide? borderSide;
  final double? elevation;
  final double borderRadius;
  final FontWeight? fontWeight;
  final double? prefixIconWidth;
  final VoidCallback? onPressed;

  const ButtonWidget({
    Key? key,
    this.text,
    this.borderSide,
    this.prefixIcon,
    this.prefixImageUrl,
    this.onPressed,
    this.elevation = 0.8,
    this.isLoading = false,
    this.font = defaultFont,
    this.borderRadius = 4,
    this.prefixIconWidth = 30,
    this.minimumSize = Size.zero,
    this.width = double.infinity,
    this.textColor = colorWhite,
    this.isHideKeyboardOnTap = true,
    this.buttonColor = colorPrimary,
    this.fontWeight = mediumFontWeight,
    this.fontSize = buttonTextFontSize,
    this.borderColor = colorPrimary,
    this.padding = const EdgeInsets.fromLTRB(20, 12, 20, 8),
    this.stylePadding = const EdgeInsets.symmetric(
      horizontal: 0,
      vertical: 11.5,
    ),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isHideKeyboardOnTap && isLoading) {
      closeSoftKeyBoard();
    }

    return Padding(
      key: key,
      padding: padding,
      child: SizedBox(
        width: width,
        child: (prefixImageUrl != null || prefixIcon != null)
            ? ElevatedButton.icon(
                icon: PrefixIconWidget(
                  isLoading: isLoading,
                  prefixIcon: prefixIcon,
                  prefixImageUrl: prefixImageUrl,
                  prefixIconWidth: prefixIconWidth,
                ),
                label: Padding(
                  padding: const EdgeInsets.only(
                    left: 3,
                    right: 5,
                  ),
                  child: isLoading
                      ? LoadingWidget(
                          textColor: buttonColor,
                        )
                      : Text(
                          text ?? "",
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                ),
                onPressed: isLoading ? null : onPressed,
                style: ElevatedButton.styleFrom(
                  elevation: elevation,
                  primary: buttonColor,
                  onPrimary: textColor,
                  shape: borderSide != null
                      ? RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            borderRadius,
                          ),
                          side: borderSide!,
                        )
                      : RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            borderRadius,
                          ),
                        ),
                  padding: stylePadding,
                  textStyle: GoogleFonts.getFont(
                    font,
                    color: textColor,
                    fontSize: fontSize,
                    fontWeight: isLoading ? FontWeight.normal : fontWeight,
                  ),
                ),
              )
            : ElevatedButton(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 5,
                    right: 5,
                  ),
                  child: isLoading
                      ? LoadingWidget(
                          textColor: buttonColor,
                        )
                      : Text(
                          text ?? "",
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                ),
                onPressed: isLoading ? null : onPressed,
                style: ElevatedButton.styleFrom(
                  elevation: elevation,
                  primary: buttonColor,
                  onPrimary: textColor,
                  minimumSize: minimumSize,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      borderRadius,
                    ),
                  ),
                  padding: stylePadding,
                  textStyle: GoogleFonts.getFont(
                    font,
                    color: textColor,
                    fontSize: fontSize,
                    fontWeight: isLoading ? FontWeight.normal : fontWeight,
                  ),
                ),
              ),
      ),
    );
  }
}

class PrefixIconWidget extends StatelessWidget {
  const PrefixIconWidget({
    Key? key,
    this.isLoading = false,
    this.prefixIcon,
    this.prefixIconWidth,
    this.prefixImageUrl,
  }) : super(key: key);

  final bool isLoading;
  final Icon? prefixIcon;
  final String? prefixImageUrl;
  final double? prefixIconWidth;

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Icon(
            Icons.circle,
            color: Colors.transparent,
          )
        : prefixIcon != null
            ? prefixIcon!
            : Padding(
                padding: const EdgeInsets.only(
                  right: 16,
                ),
                child: Image.asset(
                  prefixImageUrl!,
                  width: prefixIconWidth,
                ),
              );
  }
}
