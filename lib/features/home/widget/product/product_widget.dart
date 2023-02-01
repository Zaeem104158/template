import 'package:flutter/material.dart';
import 'package:thrive_mobile_app/app/values/app_fonts.dart';
import 'package:thrive_mobile_app/app/values/app_colors.dart';
import 'package:thrive_mobile_app/app/widget/text_widget.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';
import 'package:thrive_mobile_app/app/widget/image_view_widget.dart';
import 'package:thrive_mobile_app/app/widget/bordered_text_widget.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    Key? key,
    this.name,
    this.imageUrl,
    this.maxLines,
    this.onPressed,
    this.height = 160,
    this.textOverflow,
    this.coveragePressed,
    this.textSize = semiTextFontSize,
    this.coverageButtonPadding = const EdgeInsets.all(5),
  }) : super(key: key);

  final String? name;
  final int? maxLines;
  final double? height;
  final double? textSize;
  final String? imageUrl;
  final VoidCallback? onPressed;
  final TextOverflow? textOverflow;
  final VoidCallback? coveragePressed;
  final EdgeInsets coverageButtonPadding;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.isDarkMode;

    return Padding(
      padding: const EdgeInsets.all(3.5),
      child: Column(
        children: [
          GestureDetector(
            onTap: onPressed,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Stack(
                children: [
                  Container(
                    height: height,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: colorGrey.withOpacity(0.75),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: imageUrl.isBlank
                          ? ImageViewWidget(
                              imageUrl: Assets.icons.defaultIcon.path,
                              isLocalAsset: true,
                              isCircular: false,
                            )
                          : ImageViewWidget(
                              imageUrl: imageUrl!,
                              isCircular: false,
                            ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Color(0x83000000),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(6),
                          bottomRight: Radius.circular(6),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(12, 6, 12, 8),
                        child: TextWidget(
                          name,
                          maxLines: 2,
                          fontSize: textSize,
                          color: colorWhite,
                          padding: EdgeInsets.zero,
                          textOverflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (coveragePressed != null) ...[
            SizedBox(
              height: 5,
            ),
            GestureDetector(
              onTap: coveragePressed,
              child: BorderedTextWidget(
                LocaleKeys.addToCoverage.tr(),
                borderSize: 0.6,
                borderRadius: 8,
                width: double.infinity,
                fontSize: smallFontSize,
                fontWeight: mediumFontWeight,
                padding: coverageButtonPadding,
                color: isDarkMode ? colorWhite : colorPrimary,
                backgroundColor: isDarkMode ? colorDarkMode : colorWhite,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
