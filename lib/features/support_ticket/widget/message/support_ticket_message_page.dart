import 'package:flutter/material.dart';
import 'support_ticket_message_list_view_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/shared/utils/util.dart';
import 'package:thrive_mobile_app/app/values/app_types.dart';
import 'package:thrive_mobile_app/app/values/constants.dart';
import 'package:thrive_mobile_app/app/values/app_colors.dart';
import '../../../../app/widget/circular_progress_widget.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';
import 'package:thrive_mobile_app/app/widget/appbar_widget.dart';
import 'package:thrive_mobile_app/app/widget/shimmer_widget.dart';
import 'package:thrive_mobile_app/app/widget/image_view_widget.dart';
import 'package:thrive_mobile_app/app/widget/icon_rounded_border.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';
import 'package:thrive_mobile_app/features/error/paginated_error_widget.dart';
import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';
import 'package:thrive_mobile_app/features/support_ticket/model/email_ticket_id.dart';
import 'package:thrive_mobile_app/features/notification/widget/notification_list_view_widget.dart';
import 'package:thrive_mobile_app/features/support_ticket/provider/support_ticket_message_provider.dart';
import 'package:thrive_mobile_app/features/support_ticket/model/support_ticket_message/support_ticket_message.dart';

class SupportTicketMessagePage extends ConsumerStatefulWidget {
  const SupportTicketMessagePage({
    Key? key,
    required this.emailTicketId,
  }) : super(key: key);

  final EmailTicketId emailTicketId;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SupportTicketMessagePageState();
}

class _SupportTicketMessagePageState
    extends ConsumerState<SupportTicketMessagePage> {
  late final ScrollController _scrollController;
  late final TextEditingController _messageController;

  @override
  void initState() {
    _scrollController = ScrollController();
    _messageController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<PaginationState>(
      supportTicketMessageStateProvider(widget.emailTicketId.ticketId),
      (prev, next) {
        if (next.isPaginatedError) {
          next.error.showSnackBar(context);
        }
      },
    );

    final _messageState = ref.watch(
      supportTicketMessageStateProvider(widget.emailTicketId.ticketId),
    );
    final _attachmentNotifier = ref.read(
      supportTicketMessageAttachmentPathProvider.notifier,
    );
    final _messageNotifier = ref.read(
      supportTicketMessageStateProvider(widget.emailTicketId.ticketId).notifier,
    );
    _messageNotifier.scrollListener(_scrollController);

    return Scaffold(
      appBar: AppBarWidget(
        title: widget.emailTicketId.ticketTitle.isBlank
            ? LocaleKeys.supportTicketMessage.tr()
            : "${widget.emailTicketId.ticketTitle} - ${LocaleKeys.message.tr()}",
        actionWidgets: [
          if (!_messageState.isLoading) ...[
            InkWell(
              onTap: () {
                _messageNotifier.getPaginatedData(
                  fromRefresh: true,
                );
                Future.delayed(const Duration(seconds: 1)).then(
                  (value) => _scrollController.jumpTo(0),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                  right: 14,
                ),
                child: Icon(
                  Icons.refresh_outlined,
                ),
              ),
            ),
          ],
        ],
      ),
      body: _messageState.isLoading && _messageState.datas.isBlank
          ? ShimmerWidget(
              widget: NotificationListViewWidget(),
            )
          : _messageNotifier.isErrorOccurred()
              ? PaginatedErrorWidget(
                  notifier: _messageNotifier,
                  state: _messageState,
                )
              : SupportTicketMessageListViewWidget(
                  scrollController: _scrollController,
                  userEmail: widget.emailTicketId.email,
                  isFetchingNext: _messageState.isFetchingNext,
                  messages:
                      convertToSupportTicketMessageData(_messageState.datas),
                  onPressedFile: (dbFile) {
                    final fileUrl = dbFile?.fileUrl;

                    if (fileUrl.isValidImageUrl) {
                      showImageDialog(
                        context,
                        fileUrl,
                      );
                    } else {
                      openUrl(context, fileUrl);
                    }
                  },
                ),
      bottomNavigationBar: Container(
        padding: MediaQuery.of(context).viewInsets,
        child: Wrap(
          children: [
            if (ref.watch(supportTicketMessageAttachmentPathProvider) !=
                null) ...[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 10,
                          right: 10,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: colorGrey),
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        child: ImageViewWidget(
                          width: double.infinity,
                          height: double.infinity,
                          imageUrl: _getFileUrl(ref),
                          placeHolderIcon: Assets.icons.defaultIcon.path,
                          isLocalAsset: !_pickedFileIsImage(ref),
                          isPickedImage: _pickedFileIsImage(ref),
                        ),
                      ),
                      Positioned(
                        top: 3,
                        right: 3,
                        child: IconRoundedBorder(
                          borderColorOpacity: 1,
                          onPressed: () => _attachmentNotifier.state = null,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
            Container(
              padding: const EdgeInsets.only(
                left: 12,
                right: 16,
                bottom: 3,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: context.isDarkMode
                        ? colorFadeAsh.withOpacity(0.4)
                        : Colors.black12,
                    width: 1,
                  ),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (ref.watch(supportTicketMessageAttachmentPathProvider) ==
                          null &&
                      !_messageState.isLoading) ...[
                    GestureDetector(
                      onTap: () {
                        pickFile(
                          context,
                          isPopNavigation: false,
                        ).then((paths) {
                          if (!paths.isBlank && !paths.first.isBlank) {
                            _attachmentNotifier.state = paths.first!;
                          }
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(3),
                        child: Icon(
                          Icons.attachment,
                        ),
                      ),
                    ),
                  ],
                  Flexible(
                    child: TextFormField(
                      maxLines: 3,
                      minLines: 1,
                      textAlign: TextAlign.start,
                      controller: _messageController,
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        hintText: LocaleKeys.typeMessage.tr(),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  _messageState.isLoading && !_messageState.isCreateUpdating
                      ? CircularProgressWidget(
                          padding: const EdgeInsets.only(
                            right: 5,
                          ),
                        )
                      : GestureDetector(
                          onTap: () async {
                            final text = _messageController.text.trim();

                            if (!text.isBlank ||
                                _attachmentNotifier.state != null) {
                              final request = {
                                "text": text,
                                "fileIds": [],
                                "ticketId": widget.emailTicketId.ticketId,
                                attachmentPath: _attachmentNotifier.state,
                              };

                              final isInternet = await ref.isInternetConnected(
                                  context,
                                  isShowAlert: true);
                              if (isInternet) {
                                _messageNotifier.createData(request);
                                _messageController.clear();
                                _attachmentNotifier.state = null;

                                if (_scrollController.hasClients &&
                                    _scrollController.position.pixels > 0) {
                                  _scrollController.jumpTo(0);
                                }
                              }
                            }
                          },
                          child: Icon(
                            Icons.send,
                            size: 28,
                          ),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool _pickedFileIsImage(WidgetRef ref) {
    final path = ref.read(supportTicketMessageAttachmentPathProvider);

    if (path != null) {
      for (final type in imageTypes) {
        if (path.contains(type)) {
          return true;
        }
      }
    }

    return false;
  }

  String _getFileUrl(WidgetRef ref) {
    final path = ref.read(supportTicketMessageAttachmentPathProvider);

    if (path != null) {
      for (final type in imageTypes) {
        if (path.contains(type)) {
          return path;
        }
      }

      return Assets.icons.docIcon.path;
    }

    return Assets.icons.defaultIcon.path;
  }
}
