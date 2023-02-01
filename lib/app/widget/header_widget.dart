import 'package:flutter/widgets.dart';

import '../../app/values/app_fonts.dart';
import '../../app/widget/text_widget.dart';
import '../../app/exports/generated_values_export.dart';

class HeaderComponent extends StatelessWidget {
  final String title;
  final Color? color;
  final bool showViewAll;
  final double fontSize;
  final EdgeInsets padding;
  final VoidCallback? onPressed;

  const HeaderComponent(
    this.title, {
    Key? key,
    this.color,
    this.onPressed,
    this.showViewAll = false,
    this.fontSize = textFontSize,
    this.padding = const EdgeInsets.fromLTRB(16, 0, 12, 4),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: TextWidget(
            title,
            color: color,
            padding: padding,
            font: defaultFont,
            fontSize: fontSize,
            textAlign: TextAlign.start,
            fontWeight: mediumFontWeight,
          ),
        ),
        if (showViewAll) ...[
          const SizedBox(
            width: 3,
          ),
          GestureDetector(
            onTap: onPressed,
            child: TextWidget(
              LocaleKeys.viewAll.tr(),
              font: defaultFont,
              fontSize: smallFontSize,
              fontWeight: mediumFontWeight,
              padding: const EdgeInsets.fromLTRB(12, 0, 17.5, 4),
            ),
          ),
        ],
      ],
    );
  }
}
