import 'package:flutter/material.dart';
import '../../../../../shared/utils/extensions.dart';
import 'package:thrive_mobile_app/app/values/app_colors.dart';
import '../../../../app/widget/circular_progress_widget.dart';
import 'package:thrive_mobile_app/app/model/db_file/db_file.dart';
import 'package:thrive_mobile_app/app/widget/image_view_widget.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';
import 'package:thrive_mobile_app/features/support_ticket/model/support_ticket_message/support_ticket_message.dart';

class SupportTicketMessageListViewWidget extends StatelessWidget {
  SupportTicketMessageListViewWidget({
    Key? key,
    this.messages,
    this.userEmail,
    this.maxLines = 2,
    this.onPressedFile,
    this.scrollController,
    this.shimmerCount = 12,
    this.isFetchingNext = false,
    this.textOverflow = TextOverflow.ellipsis,
  }) : super(key: key);

  final int? maxLines;
  final int shimmerCount;
  final String? userEmail;
  final bool isFetchingNext;
  final TextOverflow? textOverflow;
  final ScrollController? scrollController;
  final List<SupportTicketMessage>? messages;
  final Function(DbFile? dbFile)? onPressedFile;

  @override
  Widget build(BuildContext context) {
    int length = shimmerCount;
    if (!messages.isBlank) {
      length = messages!.length;
    }

    return Column(
      children: [
        if (isFetchingNext) ...[
          const CircularProgressWidget(),
        ],
        Expanded(
          child: ListView.builder(
            reverse: true,
            itemCount: length,
            controller: scrollController,
            padding: const EdgeInsets.only(top: 14),
            physics: const AlwaysScrollableScrollPhysics(),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            itemBuilder: (context, index) {
              bool isFromUser = false;
              int attachmentLength = 0;
              bool hasAttachment = false;
              SupportTicketMessage? supportTicketMessage;

              if (!messages.isBlank) {
                supportTicketMessage = messages![index];
                attachmentLength = supportTicketMessage.attachments.length;
                hasAttachment = attachmentLength > 0;
                isFromUser =
                    supportTicketMessage.messageFrom?.email == userEmail;
              }

              return Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                ),
                child: Row(
                  mainAxisAlignment: isFromUser
                      ? MainAxisAlignment.end
                      : MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: isFromUser
                          ? CrossAxisAlignment.end
                          : CrossAxisAlignment.start,
                      children: [
                        Container(
                          constraints: BoxConstraints(
                            maxWidth: _getMessageMaxWidth(context),
                          ),
                          child: Column(
                            crossAxisAlignment: isFromUser
                                ? CrossAxisAlignment.end
                                : CrossAxisAlignment.start,
                            children: [
                              if (!isFromUser) ...[
                                Text(
                                  supportTicketMessage?.messageFrom?.name
                                          .capitalize(removeCase: "_") ??
                                      "",
                                  textAlign: isFromUser
                                      ? TextAlign.left
                                      : TextAlign.end,
                                  softWrap: true,
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                              ] else ...[
                                SizedBox.shrink(),
                              ],
                              Container(
                                padding: EdgeInsets.fromLTRB(12, 9, 12, 9),
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                  color: _isTextEmpty(supportTicketMessage)
                                      ? null
                                      : isFromUser
                                          ? colorPrimary
                                          : colorAccent,
                                ),
                                child: _isTextEmpty(supportTicketMessage)
                                    ? SizedBox.shrink()
                                    : SelectableText(
                                        supportTicketMessage?.text?.trim() ??
                                            "",
                                        textAlign: isFromUser
                                            ? TextAlign.left
                                            : TextAlign.end,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                        ),
                                      ),
                              ),
                              if (hasAttachment) ...[
                                SizedBox(
                                  height: 3,
                                ),
                                if (attachmentLength > 1) ...[
                                  GridView.builder(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount:
                                          attachmentLength > 1 ? 2 : 1,
                                    ),
                                    itemCount: supportTicketMessage!
                                        .attachments.length,
                                    itemBuilder: (context, index) {
                                      final attachment = supportTicketMessage!
                                          .attachments[index];

                                      final isImageExtension =
                                          attachment.fileUrl.isValidImageUrl;

                                      final fileUrl = isImageExtension
                                          ? attachment.fileUrl
                                          : Assets.icons.docIcon.path;

                                      return Padding(
                                        padding: const EdgeInsets.all(2.5),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: colorGrey),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(5),
                                            ),
                                          ),
                                          child: ImageViewWidget(
                                            imageUrl: fileUrl,
                                            imageRadius: 4,
                                            isCircular: false,
                                            isLocalAsset: !isImageExtension,
                                            onPressed: () =>
                                                onPressedFile != null
                                                    ? onPressedFile!(attachment)
                                                    : null,
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ] else if (attachmentLength == 1) ...[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 2.5,
                                      bottom: 2.5,
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: colorGrey),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5),
                                        ),
                                      ),
                                      child: ImageViewWidget(
                                        imageRadius: 4,
                                        imageUrl: supportTicketMessage!
                                                .attachments[0]
                                                .fileUrl
                                                .isValidImageUrl
                                            ? supportTicketMessage
                                                .attachments[0].fileUrl
                                            : Assets.icons.docIcon.path,
                                        isLocalAsset: !supportTicketMessage
                                            .attachments[0]
                                            .fileUrl
                                            .isValidImageUrl,
                                        onPressed: () => onPressedFile != null
                                            ? onPressedFile!(
                                                supportTicketMessage
                                                    ?.attachments[0])
                                            : null,
                                      ),
                                    ),
                                  ),
                                ],
                              ],
                              Padding(
                                padding: EdgeInsets.fromLTRB(2, 3, 2, 5),
                                child: Text(
                                  supportTicketMessage?.creationDate
                                          .formattedDateFromTimestamp() ??
                                      "",
                                  textAlign: isFromUser
                                      ? TextAlign.left
                                      : TextAlign.end,
                                  softWrap: true,
                                  style: const TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              if (hasAttachment) ...[
                                SizedBox(
                                  height: 16,
                                ),
                              ] else ...[
                                SizedBox(
                                  height: 8,
                                ),
                              ],
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  double _getMessageMaxWidth(BuildContext context) {
    return MediaQuery.of(context).size.width * 0.58;
  }

  bool _isTextEmpty(SupportTicketMessage? supportTicketMessage) {
    if (supportTicketMessage == null) return true;
    return supportTicketMessage.text?.trim().isBlank;
  }
}
