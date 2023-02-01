import 'package:flutter/material.dart';
import 'package:thrive_mobile_app/app/values/app_colors.dart';
import 'package:thrive_mobile_app/app/widget/image_view_widget.dart';
import 'package:thrive_mobile_app/gen/assets.gen.dart';

import 'icon_rounded_border.dart';

class ProfileImageHeadWidget extends StatelessWidget {
  final double width;
  final double height;
  final bool isLoading;
  final String? imageUrl;
  final Color borderColor;
  final double borderWidth;
  final EdgeInsets iconMargin;
  final bool isShowCameraIcon;
  final VoidCallback? onPressedImage;
  final VoidCallback? onPressedCameraIcon;

  const ProfileImageHeadWidget({
    Key? key,
    this.imageUrl,
    this.width = 135,
    this.height = 135,
    this.onPressedImage,
    this.borderWidth = 0.5,
    this.isLoading = false,
    this.onPressedCameraIcon,
    this.isShowCameraIcon = true,
    this.borderColor = colorGrey,
    this.iconMargin = const EdgeInsets.only(top: 8, right: 6),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: width,
        height: height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              child: InkWell(
                onTap: onPressedImage,
                child: IgnorePointer(
                  child: ImageViewWidget(
                    borderWidth: 0.5,
                    borderColor: colorGrey,
                    height: double.infinity,
                    width: double.infinity,
                    placeHolderIcon: Assets.icons.userPlaceholder.path,
                    imageUrl: imageUrl ?? Assets.icons.userPlaceholder.path,
                    isLocalAsset: imageUrl == null,
                    imageRadius: imageUrl != null ? 100 : 0,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: colorGrey,
                border: Border.all(
                  color: borderColor,
                  width: borderWidth,
                ),
              ),
            ),
            if (isShowCameraIcon) ...[
              Positioned(
                top: 3,
                right: 2,
                width: 35,
                height: 35,
                child: IconRoundedBorder(
                  icon: Icons.camera_alt_rounded,
                  onPressed: onPressedCameraIcon,
                  borderColorOpacity: 0.6,
                ),
              ),
            ],
            if (isLoading) ...[
              const Align(
                alignment: Alignment.center,
                child: CircularProgressIndicator(
                  color: Colors.red,
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
