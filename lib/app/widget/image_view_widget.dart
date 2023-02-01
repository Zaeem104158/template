import 'dart:io';

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';

import '../../app/values/app_fonts.dart';

class ImageViewWidget extends StatelessWidget {
  final double? width;
  final BoxFit? boxFit;
  final double? height;
  final String? imageUrl;
  final bool isCircular;
  final bool isLocalAsset;
  final bool isPickedImage;
  final Color? borderColor;
  final double imageRadius;
  final double borderWidth;
  final Color backgroundColor;
  final String placeHolderIcon;
  final double backgroundRadius;
  final VoidCallback? onPressed;
  final double backgroundColorOpacity;

  const ImageViewWidget({
    Key? key,
    required this.imageUrl,
    this.borderColor,
    this.onPressed,
    this.width = 100,
    this.height = 100,
    this.isCircular = true,
    this.imageRadius = 8,
    this.borderWidth = 2.5,
    this.boxFit = BoxFit.cover,
    this.isLocalAsset = false,
    this.isPickedImage = false,
    this.backgroundRadius = 100,
    this.placeHolderIcon = defaultIconAsset,
    this.backgroundColor = Colors.transparent,
    this.backgroundColorOpacity = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return onPressed != null
        ? GestureDetector(
            child: _getImageViewWidget(),
            onTap: onPressed,
          )
        : _getImageViewWidget();
  }

  Widget _getImageViewWidget() {
    return Container(
      height: height,
      width: width,
      decoration: borderColor != null
          ? BoxDecoration(
              color: backgroundColor.withOpacity(backgroundColorOpacity),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  backgroundRadius,
                ),
              ),
              border: Border.all(
                color: borderColor!,
                width: borderWidth,
              ),
            )
          : null,
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(
            isCircular ? 100 : imageRadius,
          ),
        ),
        child: LoadImageWidget(
          boxFit: boxFit,
          imageUrl: imageUrl,
          isLocalAsset: isLocalAsset,
          isPickedImage: isPickedImage,
          placeHolderIcon: placeHolderIcon,
        ),
      ),
    );
  }
}

class LoadImageWidget extends StatelessWidget {
  const LoadImageWidget({
    Key? key,
    this.boxFit,
    this.imageUrl,
    required this.isLocalAsset,
    required this.isPickedImage,
    required this.placeHolderIcon,
  }) : super(key: key);

  final BoxFit? boxFit;
  final String? imageUrl;
  final bool isPickedImage;
  final bool isLocalAsset;
  final String placeHolderIcon;

  @override
  Widget build(BuildContext context) {
    return isLocalAsset
        ? FadeInImage(
            placeholder: AssetImage(placeHolderIcon),
            fit: boxFit,
            width: double.infinity,
            image: AssetImage(
              imageUrl ?? placeHolderIcon,
            ),
          )
        : isPickedImage
            ? FadeInImage(
                height: 220,
                width: double.infinity,
                fit: boxFit,
                placeholder: AssetImage(
                  Assets.icons.defaultIcon.path,
                ),
                image: FileImage(
                  File(imageUrl ?? placeHolderIcon),
                ),
              )
            : CachedNetworkImage(
                imageUrl: imageUrl ?? placeHolderIcon,
                fit: boxFit,
                width: double.infinity,
                placeholder: (context, url) => Image.asset(
                  placeHolderIcon,
                  width: double.infinity,
                  fit: boxFit,
                ),
                errorWidget: (context, url, error) => Image.asset(
                  placeHolderIcon,
                  width: double.infinity,
                  fit: boxFit,
                ),
              );
  }
}
