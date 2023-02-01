import 'package:flutter/material.dart';
import 'package:thrive_mobile_app/app/values/app_colors.dart';

class IconRoundedBorder extends StatelessWidget {
  const IconRoundedBorder({
    Key? key,
    this.onPressed,
    this.width = 25,
    this.height = 25,
    this.iconSize = 18,
    this.borderWidth = 1,
    this.borderColor = colorGrey,
    this.iconColor = colorPrimary,
    this.borderColorOpacity = 0.5,
    this.boxShape = BoxShape.circle,
    this.decorationColor = colorWhite,
    this.alignment = Alignment.center,
    this.icon = Icons.close,
    this.iconPadding = const EdgeInsets.only(top: 1),
  }) : super(key: key);

  final IconData icon;
  final double width;
  final double height;
  final Color iconColor;
  final double iconSize;
  final BoxShape boxShape;
  final Color borderColor;
  final double borderWidth;
  final Alignment alignment;
  final Color decorationColor;
  final EdgeInsets iconPadding;
  final VoidCallback? onPressed;
  final double borderColorOpacity;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(
          width: borderWidth,
          color: borderColor.withOpacity(
            borderColorOpacity,
          ),
        ),
        color: decorationColor,
        shape: boxShape,
      ),
      alignment: alignment,
      child: IconButton(
        padding: iconPadding,
        icon: Icon(
          icon,
          color: iconColor,
          size: iconSize,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
