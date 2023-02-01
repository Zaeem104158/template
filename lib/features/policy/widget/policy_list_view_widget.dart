import 'package:flutter/material.dart';
import '../../../../shared/utils/extensions.dart';
import 'package:thrive_mobile_app/app/values/app_fonts.dart';
import 'package:thrive_mobile_app/app/values/app_types.dart';
import 'package:thrive_mobile_app/app/values/app_colors.dart';
import 'package:thrive_mobile_app/app/widget/text_widget.dart';
import 'package:thrive_mobile_app/app/widget/header_row_widget.dart';
import 'package:thrive_mobile_app/app/widget/bordered_text_widget.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';
import 'package:thrive_mobile_app/app/widget/circular_progress_widget.dart';
import 'package:thrive_mobile_app/features/policy/model/policy/policy.dart';
import 'package:thrive_mobile_app/features/home/widget/product/product_widget.dart';

class PolicyListViewWidget extends StatelessWidget {
  const PolicyListViewWidget({
    Key? key,
    this.policies,
    this.onPressed,
    this.maxLines = 2,
    this.scrollController,
    this.shimmerCount = 12,
    this.onViewCertificate,
    this.onRequestCertificate,
    this.isFetchingNext = false,
    this.isCertificateCreating = false,
    this.textOverflow = TextOverflow.ellipsis,
  }) : super(key: key);

  final int? maxLines;
  final int shimmerCount;
  final bool isFetchingNext;
  final List<Policy>? policies;
  final bool isCertificateCreating;
  final TextOverflow? textOverflow;
  final ScrollController? scrollController;
  final Function(Policy policy)? onPressed;
  final Function(Policy policy)? onViewCertificate;
  final Function(Policy policy)? onRequestCertificate;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = false;

    int length = shimmerCount;
    if (!policies.isBlank) {
      length = policies!.length;
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
              Policy? policy;

              if (!policies.isBlank) {
                policy = policies![index];
              }

              return policy != null
                  ? GestureDetector(
                      onTap: () => onPressed != null && policy != null
                          ? onPressed!(policy)
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
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  HeaderRowWidget(
                                    "${LocaleKeys.policyNo.tr()}:",
                                    "${policy.policyNumber}",
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  HeaderRowWidget(
                                    "${LocaleKeys.premium.tr()}:",
                                    "\$${policy.premium}",
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  if (!policy.carrierName.isBlank) ...[
                                    HeaderRowWidget(
                                      "${LocaleKeys.carrier.tr()}:",
                                      policy.carrierName,
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                  ],
                                  if (!policy.insuranceName.isBlank) ...[
                                    HeaderRowWidget(
                                      "${LocaleKeys.insurance.tr()}:",
                                      policy.insuranceName,
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                  ],
                                  if (policy.effectiveDate > 0) ...[
                                    HeaderRowWidget(
                                      "${LocaleKeys.effectiveDate.tr()}:",
                                      policy.effectiveDate
                                          .formattedDateFromTimestamp(),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                  ],
                                  if (policy.expiredDate > 0) ...[
                                    HeaderRowWidget(
                                      "${LocaleKeys.expireDate.tr()}:",
                                      policy.expiredDate
                                          .formattedDateFromTimestamp(),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                  ],
                                  if (!policy.importedAgent.isBlank) ...[
                                    HeaderRowWidget(
                                      "${LocaleKeys.importedAgent.tr()}:",
                                      policy.importedAgent,
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                  ],
                                  if (!policy.policyTerm.isBlank) ...[
                                    HeaderRowWidget(
                                      "${LocaleKeys.policyTerm.tr()}:",
                                      policy.policyTerm,
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                  ],
                                  if (!policy.source.isBlank) ...[
                                    HeaderRowWidget(
                                      "${LocaleKeys.source.tr()}:",
                                      policy.source,
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                  ],
                                ],
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  if (!policy.policyType.isBlank) ...[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 8,
                                        right: 8,
                                      ),
                                      child: BorderedTextWidget(
                                        policy.policyType
                                            ?.capitalize(removeCase: "_"),
                                        backgroundColor: _getStatusColor(
                                          policy.policyType,
                                        ),
                                        borderSize: 0.1,
                                        color: colorWhite,
                                      ),
                                    ),
                                  ],
                                  if (policy.creationDateTimeStamp > 0) ...[
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
                                                policy.creationDateTimeStamp
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
                              SizedBox(
                                height: 14,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: InkWell(
                                      onTap: () =>
                                          onRequestCertificate != null &&
                                                  policy != null
                                              ? onRequestCertificate!(policy)
                                              : null,
                                      child: isCertificateCreating
                                          ? const CircularProgressWidget()
                                          : BorderedTextWidget(
                                              LocaleKeys.requestCertificate
                                                  .tr(),
                                              width: double.infinity,
                                              fontSize: smallFontSize,
                                              padding: const EdgeInsets.all(5),
                                              color: isDarkMode
                                                  ? colorWhite
                                                  : colorPrimary,
                                              backgroundColor: isDarkMode
                                                  ? colorDarkMode
                                                  : colorWhite,
                                            ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Flexible(
                                    child: InkWell(
                                      onTap: () => onViewCertificate != null &&
                                              policy != null
                                          ? onViewCertificate!(policy)
                                          : null,
                                      child: BorderedTextWidget(
                                        LocaleKeys.viewCertificate.tr(),
                                        width: double.infinity,
                                        fontSize: smallFontSize,
                                        padding: const EdgeInsets.all(5),
                                        color: isDarkMode
                                            ? colorWhite
                                            : colorPrimary,
                                        backgroundColor: isDarkMode
                                            ? colorDarkMode
                                            : colorWhite,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
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
    if (status == PolicyStatus.EXPIRED.name) {
      return Colors.red;
    } else if (status == PolicyStatus.EXPIRING.name) {
      return Colors.pinkAccent;
    } else if (status == PolicyStatus.IN_REVIEW.name) {
      return Colors.purple;
    } else if (status == PolicyStatus.PENDING.name) {
      return Colors.deepOrangeAccent;
    } else if (status == PolicyStatus.PENDING_CANCELLATION.name) {
      return Colors.cyanAccent;
    } else if (status == PolicyStatus.PENDING.name) {
      return Colors.green;
    } else if (status == PolicyStatus.MISSING_INFO.name) {
      return Colors.orange;
    } else if (status == PolicyStatus.ACTIVE_RENEW.name) {
      return Colors.indigo;
    } else {
      return Colors.blue;
    }
  }
}
