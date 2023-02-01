import 'package:flutter/material.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';
import 'package:thrive_mobile_app/app/widget/circular_progress_widget.dart';
import 'package:thrive_mobile_app/app/widget/header_row_widget.dart';
import 'package:thrive_mobile_app/features/policy/model/policy/policy.dart';
import '../../../../shared/utils/extensions.dart';
import 'package:thrive_mobile_app/app/values/app_types.dart';
import 'package:thrive_mobile_app/app/values/app_colors.dart';
import 'package:thrive_mobile_app/app/widget/text_widget.dart';
import 'package:thrive_mobile_app/app/widget/bordered_text_widget.dart';
import 'package:thrive_mobile_app/features/home/widget/product/product_widget.dart';
import 'package:thrive_mobile_app/features/certificate/model/certificate/certificate.dart';
import '../../../app/values/app_fonts.dart';

class CertificateListViewWidget extends StatelessWidget {
  const CertificateListViewWidget({
    Key? key,
    this.policy,
    this.onPressed,
    this.certificates,
    this.maxLines = 2,
    this.scrollController,
    this.shimmerCount = 12,
    this.onViewCertificateDoc,
    this.isFetchingNext = false,
    this.textOverflow = TextOverflow.ellipsis,
  }) : super(key: key);

  final int? maxLines;
  final Policy? policy;
  final int shimmerCount;
  final bool isFetchingNext;
  final TextOverflow? textOverflow;
  final List<Certificate>? certificates;
  final ScrollController? scrollController;
  final Function(Certificate certificate)? onPressed;
  final Function(Certificate certificate)? onViewCertificateDoc;

  @override
  Widget build(BuildContext context) {
    int length = shimmerCount;
    bool isDarkMode = false;

    if (!certificates.isBlank) {
      length = certificates!.length;
      isDarkMode = context.isDarkMode;
    }

    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: length,
            padding: const EdgeInsets.only(
              top: 8,
              left: 12,
              right: 12,
              bottom: 8,
            ),
            controller: scrollController,
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            itemBuilder: (context, index) {
              Certificate? certificate;

              if (!certificates.isBlank) {
                certificate = certificates![index];
              }

              return certificate != null
                  ? GestureDetector(
                      onTap: () => onPressed != null && certificate != null
                          ? onPressed!(certificate)
                          : null,
                      child: Card(
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
                          bottom: 6,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (policy != null) ...[
                                HeaderRowWidget(
                                  "${LocaleKeys.policyNo.tr()}:",
                                  "${policy?.policyNumber}",
                                ),
                                if (!policy?.policyTerm.isBlank) ...[
                                  SizedBox(
                                    height: 2,
                                  ),
                                  HeaderRowWidget(
                                    "${LocaleKeys.policyTerm.tr()}:",
                                    policy?.policyTerm,
                                  ),
                                ],
                                SizedBox(
                                  height: 3,
                                ),
                              ],
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  if (!certificate
                                      .certificateStatus.isBlank) ...[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 8,
                                        right: 8,
                                      ),
                                      child: BorderedTextWidget(
                                        certificate.certificateStatus
                                            ?.allCapitalize(removeCase: "_"),
                                        backgroundColor: _getStatusColor(
                                          certificate.certificateStatus,
                                        ),
                                        borderSize: 0.1,
                                        color: colorWhite,
                                      ),
                                    ),
                                  ],
                                  if (certificate.creationDateTimeStamp >
                                      0) ...[
                                    Flexible(
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 8),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            const Icon(
                                              Icons.access_time,
                                              color: Colors.grey,
                                              size: 12,
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Flexible(
                                              child: TextWidget(
                                                certificate
                                                    .creationDateTimeStamp
                                                    .formattedDateFromTimestamp(),
                                                maxLines: 1,
                                                opacity: 0.55,
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
                                ],
                              ),
                              if (certificate.certificateStatus !=
                                  CertificateStatus.REQUESTED.name) ...[
                                SizedBox(
                                  height: 16,
                                ),
                                InkWell(
                                  onTap: () => onViewCertificateDoc != null &&
                                          certificate != null
                                      ? onViewCertificateDoc!(certificate)
                                      : null,
                                  child: BorderedTextWidget(
                                    LocaleKeys.viewCertificateDoc.tr(),
                                    width: double.infinity,
                                    fontSize: smallFontSize,
                                    padding: const EdgeInsets.all(5),
                                    color:
                                        isDarkMode ? colorWhite : colorPrimary,
                                    backgroundColor:
                                        isDarkMode ? colorDarkMode : colorWhite,
                                  ),
                                ),
                              ],
                            ],
                          ),
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
    if (status == CertificateStatus.SENT.name) {
      return Colors.green;
    } else {
      return Colors.blue;
    }
  }
}
