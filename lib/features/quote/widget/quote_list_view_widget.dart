import 'package:flutter/material.dart';
import 'package:thrive_mobile_app/features/quote/model/quote/quote.dart';
import '../../../../shared/utils/extensions.dart';
import 'package:thrive_mobile_app/app/model/user/user.dart';
import 'package:thrive_mobile_app/app/values/app_types.dart';
import 'package:thrive_mobile_app/app/values/app_fonts.dart';
import 'package:thrive_mobile_app/app/values/app_colors.dart';
import 'package:thrive_mobile_app/app/widget/text_widget.dart';
import 'package:thrive_mobile_app/app/widget/header_row_widget.dart';
import 'package:thrive_mobile_app/app/widget/image_view_widget.dart';
import 'package:thrive_mobile_app/app/widget/bordered_text_widget.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';
import 'package:thrive_mobile_app/features/opportunity/model/contact/contact.dart';
import 'package:thrive_mobile_app/features/home/widget/product/product_widget.dart';
import '../../../app/widget/circular_progress_widget.dart';

class QuoteListViewWidget extends StatelessWidget {
  const QuoteListViewWidget({
    Key? key,
    this.onPressed,
    this.quotes,
    this.maxLines = 2,
    this.scrollController,
    this.shimmerCount = 12,
    this.isFetchingNext = false,
    this.textOverflow = TextOverflow.ellipsis,
  }) : super(key: key);

  final int? maxLines;
  final int shimmerCount;
  final bool isFetchingNext;
  final List<Quote>? quotes;
  final TextOverflow? textOverflow;
  final ScrollController? scrollController;
  final Function(Quote quote)? onPressed;

  @override
  Widget build(BuildContext context) {
    int length = shimmerCount;
    if (!quotes.isBlank) {
      length = quotes!.length;
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
              Quote? quote;
              Contact? contact;
              User? agent;
              String? fileUrl;

              if (!quotes.isBlank) {
                quote = quotes![index];
                contact = quote.contact;
                agent = contact?.agent;
                fileUrl = contact?.agent?.photo?.fileUrl;
              }

              return GestureDetector(
                child: quote != null
                    ? Card(
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
                              Row(
                                children: [
                                  ImageViewWidget(
                                    height: 40,
                                    width: 40,
                                    imageRadius: 100,
                                    isCircular: true,
                                    boxFit: BoxFit.cover,
                                    isLocalAsset: fileUrl == null,
                                    imageUrl: fileUrl ??
                                        Assets.icons.userPlaceholder.path,
                                    placeHolderIcon:
                                        Assets.icons.userPlaceholder.path,
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        TextWidget(
                                          agent?.name,
                                          maxLines: 2,
                                          textAlign: TextAlign.start,
                                          textOverflow: TextOverflow.ellipsis,
                                          padding: EdgeInsets.zero,
                                        ),
                                        SizedBox(
                                          height: 1,
                                        ),
                                        TextWidget(
                                          agent?.email,
                                          maxLines: 2,
                                          textAlign: TextAlign.start,
                                          textOverflow: TextOverflow.ellipsis,
                                          padding: EdgeInsets.zero,
                                          opacity: 0.65,
                                          fontSize: smallFontSize,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  HeaderRowWidget(
                                    "${LocaleKeys.premium.tr()}:",
                                    "\$${quote.premiumAmount}",
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  if (contact != null &&
                                      !contact.phone.isBlank) ...[
                                    HeaderRowWidget(
                                      "${LocaleKeys.phone.tr()}:",
                                      contact.phone,
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                  ],
                                  if (quote.carrier != null &&
                                      !quote.carrier?.name.isBlank) ...[
                                    HeaderRowWidget(
                                      "${LocaleKeys.carrier.tr()}:",
                                      quote.carrier?.name,
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                  ],
                                  if (quote.assignedAgent != null &&
                                      !quote.assignedAgent?.name.isBlank) ...[
                                    HeaderRowWidget(
                                      "${LocaleKeys.assignedAgent.tr()}:",
                                      quote.assignedAgent?.name,
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                  ],
                                  if (quote.effectiveDate > 0) ...[
                                    HeaderRowWidget(
                                      "${LocaleKeys.effectiveDate.tr()}:",
                                      quote.effectiveDate
                                          .formattedDateFromTimestamp(),
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
                                  if (!quote.quoteStatus.isBlank) ...[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 8,
                                        right: 8,
                                      ),
                                      child: BorderedTextWidget(
                                        quote.quoteStatus
                                            .capitalize(removeCase: "_"),
                                        backgroundColor: _getStatusColor(
                                          quote.quoteStatus,
                                        ),
                                        borderSize: 0.1,
                                        color: colorWhite,
                                      ),
                                    ),
                                  ],
                                  if (quote.creationDateTimeStamp > 0) ...[
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
                                                quote.creationDateTimeStamp
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
                      )
                    : const ProductWidget(),
                onTap: () => onPressed != null && quote != null
                    ? onPressed!(quote)
                    : null,
              );
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
    if (status == QuoteStatus.CANCELLED.name) {
      return Colors.red;
    } else if (status == QuoteStatus.EXPIRED.name) {
      return Colors.deepOrangeAccent;
    } else if (status == QuoteStatus.QUOTED.name) {
      return Colors.indigo;
    } else if (status == QuoteStatus.PENDING.name) {
      return Colors.blue;
    } else if (status == QuoteStatus.PENDING_CANCEL.name) {
      return Colors.purple;
    } else {
      return Colors.green;
    }
  }
}
