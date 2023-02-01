import 'package:flutter/material.dart';
import '../../../../../shared/utils/extensions.dart';
import 'package:thrive_mobile_app/app/values/app_types.dart';
import 'package:thrive_mobile_app/app/values/app_fonts.dart';
import 'package:thrive_mobile_app/app/values/app_colors.dart';
import 'package:thrive_mobile_app/app/widget/text_widget.dart';
import '../../../../app/widget/circular_progress_widget.dart';
import 'package:thrive_mobile_app/app/widget/bordered_text_widget.dart';
import 'package:thrive_mobile_app/features/home/widget/product/product_widget.dart';
import 'package:thrive_mobile_app/features/support_ticket/model/support_ticket/support_ticket.dart';

class SupportTicketListViewWidget extends StatelessWidget {
  const SupportTicketListViewWidget({
    Key? key,
    this.onTapCard,
    this.maxLines = 2,
    this.onTapMessage,
    this.supportTickets,
    this.scrollController,
    this.shimmerCount = 12,
    this.isFetchingNext = false,
    this.textOverflow = TextOverflow.ellipsis,
  }) : super(key: key);

  final int? maxLines;
  final int shimmerCount;
  final bool isFetchingNext;
  final TextOverflow? textOverflow;
  final ScrollController? scrollController;
  final List<SupportTicket>? supportTickets;
  final Function(SupportTicket supportTicket)? onTapCard;
  final Function(SupportTicket supportTicket)? onTapMessage;

  @override
  Widget build(BuildContext context) {
    int length = shimmerCount;
    if (!supportTickets.isBlank) {
      length = supportTickets!.length;
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
              SupportTicket? supportTicket;

              if (!supportTickets.isBlank) {
                supportTicket = supportTickets![index];
              }

              return supportTicket != null
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
                            GestureDetector(
                              onTap: () =>
                                  onTapCard != null && supportTicket != null
                                      ? onTapCard!(supportTicket)
                                      : null,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextWidget(
                                    supportTicket.title,
                                    maxLines: 2,
                                    padding: EdgeInsets.zero,
                                    textAlign: TextAlign.start,
                                    textOverflow: TextOverflow.ellipsis,
                                  ),
                                  if (!supportTicket.description.isBlank) ...[
                                    TextWidget(
                                      supportTicket.description,
                                      maxLines: 4,
                                      opacity: 0.55,
                                      fontSize: smallFontSize,
                                      textAlign: TextAlign.start,
                                      textOverflow: TextOverflow.ellipsis,
                                      padding: const EdgeInsets.only(top: 5),
                                    ),
                                  ],
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                if (supportTicket.creationDate > 0) ...[
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () => onTapCard != null &&
                                              supportTicket != null
                                          ? onTapCard!(supportTicket)
                                          : null,
                                      child: Row(
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
                                              supportTicket.creationDate
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
                                if (!supportTicket.ticketStatus.isBlank) ...[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                    ),
                                    child: BorderedTextWidget(
                                      supportTicket.ticketStatus
                                          ?.allCapitalize(removeCase: "_"),
                                      backgroundColor: _getStatusColor(
                                        supportTicket.ticketStatus,
                                      ),
                                      borderSize: 0.1,
                                      color: colorWhite,
                                    ),
                                  ),
                                ],
                                GestureDetector(
                                  onTap: () => onTapMessage != null &&
                                          supportTicket != null
                                      ? onTapMessage!(supportTicket)
                                      : null,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(12, 7, 5, 0),
                                    child: Icon(
                                      Icons.message,
                                      color: context.isDarkMode
                                          ? colorWhite
                                          : colorPrimary,
                                    ),
                                  ),
                                ),
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
    if (status == SupportTicketStatus.CLOSED.name) {
      return Colors.red;
    } else if (status == SupportTicketStatus.IRRELEVANT.name) {
      return Colors.orange;
    } else if (status == SupportTicketStatus.IN_PROGRESS.name) {
      return Colors.lightGreen;
    } else if (status == SupportTicketStatus.COMPLETED.name) {
      return Colors.green;
    } else {
      return Colors.blue;
    }
  }
}
