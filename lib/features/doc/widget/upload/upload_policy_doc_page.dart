import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/app/values/app_types.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';
import 'package:thrive_mobile_app/app/widget/appbar_widget.dart';
import 'package:thrive_mobile_app/app/widget/button_widget.dart';
import 'package:thrive_mobile_app/app/widget/image_view_widget.dart';
import 'package:thrive_mobile_app/app/exports/app_values_export.dart';
import 'package:thrive_mobile_app/app/widget/icon_rounded_border.dart';
import 'package:thrive_mobile_app/features/doc/model/doc_page_data.dart';
import 'package:thrive_mobile_app/features/doc/provider/doc_provider.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';
import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';

class UploadDocPage extends ConsumerWidget {
  const UploadDocPage(
    this.docPageData, {
    Key? key,
  }) : super(key: key);

  final DocPageData docPageData;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final docType = docPageData.docType;

    final _docState = ref.watch(docStateProvider(docType));
    final _docNotifier = ref.read(docStateProvider(docType).notifier);

    ref.listen<PaginationState>(docStateProvider(docType), (prev, next) {
      if (!next.error.isBlank) {
        next.error.showSnackBar(context);
      }

      if (next.isCreateUpdating) {
        context.pop();
      }
    });

    final _docPathNotifier = ref.read(docPathProvider.notifier);
    final _pathState = ref.watch(docPathProvider);
    final _isImage = _pickedFileIsImage(_pathState);
    final _filePath = _getFileUrl(_pathState);
    final _boxFit = _geBoxFit(_pathState);

    return Scaffold(
      appBar: AppBarWidget(
        title: "${LocaleKeys.upload.tr()} ${docPageData.title}",
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 4,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: colorGrey,
                            ),
                            borderRadius: BorderRadius.all(
                              const Radius.circular(12),
                            ),
                          ),
                          child: ImageViewWidget(
                            width: 320,
                            boxFit: _boxFit,
                            isCircular: false,
                            imageUrl: _filePath,
                            isLocalAsset: !_isImage,
                            isPickedImage: _isImage,
                            placeHolderIcon: Assets.icons.defaultIcon.path,
                            height:
                                SizeConfig.isLandscapeMode(context) ? 500 : 250,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Material(
                  elevation: 20,
                  color: Colors.transparent,
                  child: IconRoundedBorder(
                    width: 54,
                    height: 54,
                    iconSize: 28,
                    borderColorOpacity: 1,
                    icon: Icons.camera_alt_rounded,
                    onPressed: () => pickFile(
                      context,
                      isPopNavigation: false,
                    ).then((paths) {
                      if (!paths.isBlank && !paths.first.isBlank) {
                        _docPathNotifier.state = paths.first!;
                      }
                    }),
                  ),
                ),
                if (!_docState.isLoading && !_pathState.isBlank) ...[
                  Positioned(
                    top: 8,
                    right: 8,
                    child: IconRoundedBorder(
                      width: 30,
                      height: 30,
                      borderColorOpacity: 1,
                      onPressed: () => _docPathNotifier.state = null,
                    ),
                  ),
                ],
              ],
            ),
            SizedBox(
              height: 5,
            ),
            ButtonWidget(
                text: LocaleKeys.upload.tr(),
                isLoading: _docState.isLoading,
                onPressed: _pathState.isBlank
                    ? null
                    : () {
                        final requestBody = {
                          attachmentPath: _docPathNotifier.state,
                          "createdDocType": docPageData.fileUploadType?.name,
                        };
                        _docNotifier.createData(requestBody);
                      }),
          ],
        ),
      ),
    );
  }

  BoxFit _geBoxFit(String? path) {
    if (path != null) {
      if (path == Assets.icons.defaultIcon.path) {
        return BoxFit.cover;
      }

      for (final type in imageTypes) {
        if (path.contains(type)) return BoxFit.cover;
      }

      return BoxFit.contain;
    }

    return BoxFit.cover;
  }

  bool _pickedFileIsImage(String? path) {
    if (path != null) {
      for (final type in imageTypes) {
        if (path.contains(type)) return true;
      }
    }

    return false;
  }

  String _getFileUrl(String? path) {
    if (path != null) {
      for (final type in imageTypes) {
        if (path.contains(type)) return path;
      }

      return Assets.icons.docIcon.path;
    }

    return Assets.icons.defaultIcon.path;
  }
}
