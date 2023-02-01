import 'package:flutter/material.dart';
import '../../../../../shared/utils/extensions.dart';
import 'package:thrive_mobile_app/gen/assets.gen.dart';
import 'package:thrive_mobile_app/app/values/app_types.dart';
import 'package:thrive_mobile_app/app/values/app_colors.dart';
import 'package:thrive_mobile_app/app/widget/text_widget.dart';
import 'package:thrive_mobile_app/app/widget/image_view_widget.dart';
import 'package:thrive_mobile_app/app/widget/bordered_text_widget.dart';
import 'package:thrive_mobile_app/app/widget/circular_progress_widget.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';
import 'package:thrive_mobile_app/features/home/widget/product/product_widget.dart';

import '../../../../app/values/size_config.dart';
import '../../model/doc/doc.dart';

class DocListViewWidget extends StatelessWidget {
  const DocListViewWidget({
    Key? key,
    this.docs,
    this.docType,
    this.onPressed,
    this.onTapDelete,
    this.maxLines = 2,
    this.scrollController,
    this.shimmerCount = 12,
    this.deleteActionIndex,
    this.isFetchingNext = false,
    this.textOverflow = TextOverflow.ellipsis,
  }) : super(key: key);

  final int? maxLines;
  final List<Doc>? docs;
  final DocType? docType;
  final int shimmerCount;
  final bool isFetchingNext;
  final int? deleteActionIndex;
  final TextOverflow? textOverflow;
  final Function(Doc doc)? onPressed;
  final ScrollController? scrollController;
  final Function(int index, Doc doc)? onTapDelete;

  @override
  Widget build(BuildContext context) {
    int length = shimmerCount;
    if (!docs.isBlank) {
      length = docs!.length;
    }

    return Column(
      children: [
        Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent:
                  !docs.isBlank ? (deleteActionIndex != null ? 271 : 265) : 170,
              crossAxisCount: SizeConfig.isLandscapeMode(context) ? 2 : 1,
            ),
            itemCount: length,
            padding: const EdgeInsets.only(
              top: 10,
              left: 8,
              right: 8,
              bottom: 4,
            ),
            controller: scrollController,
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            itemBuilder: (context, index) {
              String? fileUrl;
              Doc? policyDoc;
              bool isImageExtension = false;

              if (!docs.isBlank) {
                policyDoc = docs![index];
                fileUrl = policyDoc.dbFile?.fileUrl;
                isImageExtension = fileUrl.isValidImageUrl;
                fileUrl =
                    isImageExtension ? fileUrl : Assets.icons.docIcon.path;
              }

              return policyDoc != null
                  ? Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(
                          color: colorGrey.withOpacity(0.5),
                          width: context.isDarkMode ? 0.2 : 1,
                        ),
                      ),
                      elevation: 1.5,
                      margin: EdgeInsets.only(
                        top: 3,
                        left: 5,
                        right: 5,
                        bottom: 10,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ImageViewWidget(
                              height: 200,
                              isCircular: false,
                              width: double.infinity,
                              isLocalAsset: !isImageExtension,
                              boxFit: isImageExtension
                                  ? BoxFit.cover
                                  : BoxFit.contain,
                              imageUrl:
                                  fileUrl ?? Assets.icons.defaultIcon.path,
                              onPressed: () =>
                                  onPressed != null && policyDoc != null
                                      ? onPressed!(policyDoc)
                                      : null,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                if (docType == DocType.POLICY) ...[
                                  if (policyDoc.typeId != null &&
                                      policyDoc.typeId! > 0) ...[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 10,
                                      ),
                                      child: BorderedTextWidget(
                                        PolicyDocReqestType.POLICY_CREATED.name,
                                        backgroundColor: Colors.orange,
                                        borderSize: 0.1,
                                        color: colorWhite,
                                      ),
                                    ),
                                  ] else ...[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 10,
                                        right: 8,
                                      ),
                                      child: BorderedTextWidget(
                                        PolicyDocReqestType.REQUESTED.name
                                            .capitalize(),
                                        backgroundColor: Colors.blue,
                                        borderSize: 0.1,
                                        color: colorWhite,
                                      ),
                                    ),
                                  ],
                                ] else ...[
                                  if (!policyDoc.docCreatedBy.isBlank) ...[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 10,
                                        right: 8,
                                      ),
                                      child: BorderedTextWidget(
                                        policyDoc.docCreatedBy
                                            ?.allCapitalize(removeCase: "_"),
                                        backgroundColor: _getStatusColor(
                                          policyDoc.docCreatedBy,
                                        ),
                                        borderSize: 0.1,
                                        color: colorWhite,
                                      ),
                                    ),
                                  ],
                                ],
                                if (policyDoc.creationDateTimeStamp > 0) ...[
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Icon(
                                            Icons.access_time,
                                            size: 12,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Flexible(
                                            child: TextWidget(
                                              policyDoc.creationDateTimeStamp
                                                  .formattedDateFromTimestamp(),
                                              maxLines: 1,
                                              opacity: 0.6,
                                              fontSize: 12,
                                              textAlign: TextAlign.start,
                                              textOverflow:
                                                  TextOverflow.ellipsis,
                                              padding: EdgeInsets.zero,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                                SizedBox(
                                  width: 5,
                                ),
                                if (deleteActionIndex == index) ...[
                                  const CircularProgressWidget(
                                    scale: 0.45,
                                    padding: EdgeInsets.only(top: 2),
                                  ),
                                ] else ...[
                                  InkWell(
                                    onTap: () =>
                                        onTapDelete != null && policyDoc != null
                                            ? onTapDelete!(index, policyDoc)
                                            : null,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        top: 8,
                                        left: 8,
                                      ),
                                      child: Icon(
                                        Icons.delete,
                                        size: 23,
                                      ),
                                    ),
                                  ),
                                ],
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  : const ProductWidget();
            },
          ),
        ),
        if (isFetchingNext) ...[
          const CircularProgressWidget(),
        ],
      ],
    );
  }

  Color _getStatusColor(String? status) {
    if (status == UserType.CUSTOMER.name) {
      return Colors.blue;
    } else {
      return Colors.orange;
    }
  }
}
