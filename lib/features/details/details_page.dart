import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:thrive_mobile_app/app/values/app_colors.dart';
import 'package:thrive_mobile_app/app/values/size_config.dart';
import 'package:thrive_mobile_app/app/widget/appbar_widget.dart';
import 'package:thrive_mobile_app/app/widget/image_view_widget.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';
import 'package:thrive_mobile_app/app/model/details_page_model.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';

import '../../shared/utils/util.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({
    Key? key,
    this.detailsPageModel,
  }) : super(key: key) {
    imageUrls = detailsPageModel?.imageUrls ?? [];
  }

  late final List<String> imageUrls;
  final DetailsPageModel? detailsPageModel;

  @override
  Widget build(BuildContext context) {
    final height = SizeConfig.getScreenHeight(context);
    final width = SizeConfig.getScreenWidth(context);
    final bool isLandscapeMode = SizeConfig.isLandscapeMode(context);

    return Scaffold(
      appBar: imageUrls.isBlank
          ? AppBarWidget(
              title: LocaleKeys.details.tr(),
              elevation: 0,
            )
          : null,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  if (!imageUrls.isBlank) ...[
                    Container(
                      width: width,
                      decoration: BoxDecoration(
                        color: colorGrey,
                      ),
                      height: isLandscapeMode ? height / 1.1 : height / 2.6,
                      child: imageUrls.length > 1
                          ? SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: imageUrls.map((url) {
                                  url = url.isValidImageUrl
                                      ? url
                                      : Assets.icons.docIcon.path;

                                  return ImageViewWidget(
                                    imageUrl: url,
                                    height: height,
                                    imageRadius: 0,
                                    isCircular: false,
                                    width: width / 1.1,
                                    boxFit: BoxFit.cover,
                                    onPressed: () => _filePreview(context, url),
                                  );
                                }).toList(),
                              ),
                            )
                          : ImageViewWidget(
                              boxFit: BoxFit.cover,
                              height: height,
                              isCircular: false,
                              imageRadius: 0,
                              imageUrl: imageUrls.first.isValidImageUrl
                                  ? imageUrls.first
                                  : Assets.icons.docIcon.path,
                              onPressed: () => _filePreview(
                                context,
                                imageUrls.first.isValidImageUrl
                                    ? imageUrls.first
                                    : Assets.icons.docIcon.path,
                              ),
                            ),
                    ),
                  ],
                  Container(
                    height: height,
                    margin: EdgeInsets.only(
                      top: !imageUrls.isBlank
                          ? (isLandscapeMode ? height / 1.2 : height / 2.8)
                          : height / height,
                    ),
                    decoration: BoxDecoration(
                      color: context.isDarkMode ? colorDarkMode : Colors.white,
                      border: Border.all(
                        color: colorFadeAsh.withOpacity(0.5),
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(18, 14, 18, 5),
                      child: detailsPageModel?.widget ?? SizedBox.shrink(),
                    ),
                  ),
                ],
              ),
            ),
            if (!imageUrls.isBlank) ...[
              Positioned(
                top: 0,
                left: 0,
                child: GestureDetector(
                  onTap: () => context.pop(),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: colorBlueLight,
                        width: 0.8,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    margin: const EdgeInsets.only(
                      top: 12,
                      left: 10,
                      right: 8,
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(8, 5, 8, 5),
                      child: Icon(
                        Icons.arrow_back_outlined,
                        color: colorWhite,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  void _filePreview(BuildContext context, String? fileUrl) {
    if (fileUrl.isValidImageUrl) {
      showImageDialog(
        context,
        fileUrl,
      );
    } else {
      openUrl(context, fileUrl);
    }
  }
}
