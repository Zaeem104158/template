import 'package:flutter/material.dart';
import 'package:thrive_mobile_app/app/values/app_colors.dart';
import 'package:thrive_mobile_app/app/values/app_fonts.dart';

import 'text_widget.dart';

class HeaderRowWidget extends StatelessWidget {
  const HeaderRowWidget(
    this.headerText,
    this.bodyText, {
    this.maxLines = 1,
    this.bodyColor = colorText,
    Key? key,
  }) : super(key: key);

  final int maxLines;
  final String headerText;
  final String? bodyText;
  final Color bodyColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
          headerText,
          opacity: 0.85,
          padding: EdgeInsets.zero,
          textAlign: TextAlign.start,
          fontSize: semiTextFontSize,
          textOverflow: TextOverflow.ellipsis,
        ),
        SizedBox(
          width: 6,
        ),
        Expanded(
          child: TextWidget(
            bodyText,
            color: bodyColor,
            maxLines: maxLines,
            padding: EdgeInsets.zero,
            textAlign: TextAlign.start,
            fontSize: semiTextFontSize,
            textOverflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
