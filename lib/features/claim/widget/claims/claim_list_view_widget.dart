import 'package:flutter/material.dart';
import '../../../../../shared/utils/extensions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:thrive_mobile_app/app/values/app_types.dart';
import 'package:thrive_mobile_app/app/values/app_colors.dart';
import 'package:thrive_mobile_app/app/widget/text_widget.dart';
import 'package:thrive_mobile_app/app/widget/bordered_text_widget.dart';
import 'package:thrive_mobile_app/features/claim/model/claim/claim.dart';
import 'package:thrive_mobile_app/app/widget/circular_progress_widget.dart';
import 'package:thrive_mobile_app/features/home/widget/product/product_widget.dart';

import '../../../../translations/locale_keys.g.dart';
import '../../../../app/widget/header_row_widget.dart';

class ClaimListViewWidget extends ConsumerWidget {
  ClaimListViewWidget({
    Key? key,
    this.claims,
    this.onTapCard,
    this.maxLines = 2,
    this.scrollController,
    this.shimmerCount = 12,
    this.isFetchingNext = false,
    this.textOverflow = TextOverflow.ellipsis,
  }) : super(key: key);

  final int? maxLines;
  final int shimmerCount;
  final bool isFetchingNext;
  final List<Claim>? claims;
  final TextOverflow? textOverflow;
  final Function(Claim claim)? onTapCard;
  final ScrollController? scrollController;

  final claimSortTypes = ClaimSortType.values
      .where((element) =>
          element != ClaimSortType.All && element != ClaimSortType.Accident_At)
      .toList();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int length = shimmerCount;
    if (!claims.isBlank) {
      length = claims!.length;
    }

    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: length,
            padding: const EdgeInsets.only(
              top: 8,
              left: 10,
              right: 10,
              bottom: 8,
            ),
            controller: scrollController,
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            itemBuilder: (context, index) {
              Claim? claim;

              if (!claims.isBlank) {
                claim = claims![index];
              }

              return claim != null
                  ? GestureDetector(
                      onTap: () => onTapCard != null && claim != null
                          ? onTapCard!(claim)
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (!claim.carrierName.isBlank) ...[
                                HeaderRowWidget(
                                  "${LocaleKeys.carrier.tr()}:",
                                  claim.carrierName,
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                              ],
                              if (!claim.agencyName.isBlank) ...[
                                HeaderRowWidget(
                                  "${LocaleKeys.agency.tr()}:",
                                  claim.agencyName,
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                              ],
                              if (!claim.productName.isBlank) ...[
                                HeaderRowWidget(
                                  "${LocaleKeys.product.tr()}:",
                                  claim.productName,
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                              ],
                              if (claim.dateOfAccident > 0) ...[
                                HeaderRowWidget(
                                  "${LocaleKeys.dateOfAccident.tr()}:",
                                  claim.dateOfAccident
                                      .formattedDateFromTimestamp(),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                              ],
                              if (!claim.incidentDescription.isBlank) ...[
                                HeaderRowWidget(
                                  "${LocaleKeys.incident.tr()}:",
                                  claim.incidentDescription,
                                  bodyColor: Colors.redAccent,
                                ),
                              ],
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  if (!claim.policyNumber.isBlank) ...[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 8,
                                        right: 8,
                                      ),
                                      child: BorderedTextWidget(
                                        claim.policyNumber,
                                        backgroundColor: colorPrimary,
                                        borderSize: 0.1,
                                        color: colorWhite,
                                      ),
                                    ),
                                  ],
                                  if (claim.creationDateTimeStamp > 0) ...[
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
                                                claim.creationDateTimeStamp
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
}
