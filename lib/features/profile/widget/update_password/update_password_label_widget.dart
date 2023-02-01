import 'package:flutter/material.dart';
import 'package:thrive_mobile_app/app/values/app_fonts.dart';
import 'package:thrive_mobile_app/app/widget/text_widget.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';

class UpdatePasswordLabelWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  final double? height;
  final bool hasNavigation;
  final double borderRadius;

  const UpdatePasswordLabelWidget({
    Key? key,
    this.height = 40,
    required this.text,
    required this.icon,
    this.borderRadius = 16,
    this.hasNavigation = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
      ).copyWith(
        bottom: 12,
      ),
      padding: const EdgeInsets.only(
        left: 16,
        right: 8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: context.isDarkMode ? Colors.grey.shade800 : Colors.grey.shade300,
      ),
      child: Row(
        children: <Widget>[
          TextWidget(
            text,
            padding: EdgeInsets.zero,
            fontSize: semiTextFontSize,
          ),
          const Spacer(),
          if (hasNavigation)
            Icon(
              icon,
              size: 25,
            ),
        ],
      ),
    );
  }
}
