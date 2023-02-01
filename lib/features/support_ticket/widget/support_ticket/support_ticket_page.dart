import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/features/error/paginated_error_widget.dart';
import 'package:thrive_mobile_app/shared/utils/util.dart';
import 'package:thrive_mobile_app/app/values/app_fonts.dart';
import 'package:thrive_mobile_app/app/values/app_types.dart';
import 'package:thrive_mobile_app/app/values/constants.dart';
import 'package:thrive_mobile_app/app/routes/route_paths.dart';
import 'package:thrive_mobile_app/app/widget/text_widget.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';
import 'package:thrive_mobile_app/app/widget/appbar_widget.dart';
import 'package:thrive_mobile_app/app/widget/shimmer_widget.dart';
import 'package:thrive_mobile_app/app/provider/core_provider.dart';
import 'package:thrive_mobile_app/app/model/header_data_model.dart';
import 'package:thrive_mobile_app/app/model/details_page_model.dart';
import 'package:thrive_mobile_app/app/widget/text_form_field_wiget.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';
import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';
import 'package:thrive_mobile_app/features/details/header_componet_list_widget.dart';
import 'package:thrive_mobile_app/features/support_ticket/model/email_ticket_id.dart';
import 'package:thrive_mobile_app/features/support_ticket/provider/support_ticket_provider.dart';
import 'package:thrive_mobile_app/features/notification/widget/notification_list_view_widget.dart';
import 'package:thrive_mobile_app/features/support_ticket/model/support_ticket/support_ticket.dart';
import 'package:thrive_mobile_app/features/support_ticket/widget/support_ticket/support_ticket_list_view_widget.dart';

import '../../../../app/widget/popup_menu_button_widget.dart';
import '../../../../app/widget/refresh_indicator_widget.dart';

class SupportTicketPage extends ConsumerWidget {
  SupportTicketPage({Key? key}) : super(key: key);

  void _filterSupportTicketData(
    WidgetRef ref,
    Debouncer debouncer, {
    String? query,
  }) {
    debouncer.call(() {
      final notifier = ref.read(supportTicketStateProvider.notifier);

      Map<String, dynamic> queryMap = HashMap();
      queryMap['title'] = !query.isBlank ? query : "";

      final statusIndex = ref.read(supportTicketStatusProvider);
      if (statusIndex > 0) {
        queryMap['status'] = SupportTicketStatus.values[statusIndex].name;
      }

      notifier.getPaginatedData(
        fromRefresh: true,
        queryMap: queryMap,
      );
    });
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _debouncer = ref.watch(debouncerProvider);
    final _scrollController = ref.watch(scrollControllerProvider);
    final _supportTicketState = ref.watch(supportTicketStateProvider);
    final _textEditingController = ref.watch(textEditingControllerProvider);
    final _supportTicketNotifier =
        ref.read(supportTicketStateProvider.notifier);
    _supportTicketNotifier.scrollListener(_scrollController);

    ref.listen<PaginationState>(supportTicketStateProvider, (prev, next) {
      if (next.isPaginatedError) {
        next.error.showSnackBar(context);
      }
    });

    return Scaffold(
      appBar: AppBarWidget(
        height: 70,
        titleSpacing: 0,
        isMenuIcon: true,
        titleWidget: Row(
          children: [
            Expanded(
              child: TextFormFieldWidget(
                isValidate: false,
                prefixIcon: Icons.search,
                controller: _textEditingController,
                hint: "${LocaleKeys.search.tr()} title...",
                floatingLabelBehavior: FloatingLabelBehavior.never,
                inputDecorationBorder: const OutlineInputBorder(),
                padding: const EdgeInsets.fromLTRB(0, 16, 5, 12),
                onChanged: (value) => _filterSupportTicketData(
                  ref,
                  _debouncer,
                  query: value,
                ),
              ),
            ),
          ],
        ),
        actionWidgets: [
          GestureDetector(
            child: const Padding(
              padding: EdgeInsets.only(
                top: 3,
                left: 5,
              ),
              child: Icon(Icons.add_circle_sharp),
            ),
            onTap: () {
              context.hideSnackBar();
              context.push(
                routeCreateSupportTicket,
              );
            },
          ),
          SortByPopUpMenuWidget(
            values: SupportTicketStatus.values.map((e) => e.name).toList(),
            padding: const EdgeInsets.only(top: 24),
            dotTopPadding: 24,
            onSelected: (value) {
              _filterSupportTicketData(ref, _debouncer);
            },
          ),
        ],
      ),
      body: RefreshIndicatorWidget(
        onRefresh: () => _supportTicketNotifier.getPaginatedData(
          fromRefresh: true,
        ),
        child: _supportTicketState.isLoading
            ? const ShimmerWidget(
                widget: NotificationListViewWidget(),
              )
            : _supportTicketNotifier.isErrorOccurred()
                ? PaginatedErrorWidget(
                    notifier: _supportTicketNotifier,
                    state: _supportTicketState,
                  )
                : SupportTicketListViewWidget(
                    isFetchingNext: _supportTicketState.isFetchingNext,
                    scrollController: _scrollController,
                    supportTickets:
                        convertToSupportTicketData(_supportTicketState.datas),
                    onTapCard: (supportTicket) {
                      context.push(
                        routeDetails,
                        extra: DetailsPageModel(
                          imageUrls: [],
                          widget: _getSupportTicketDetailsWidget(supportTicket),
                        ),
                      );
                    },
                    onTapMessage: (supportTicket) async {
                      try {
                        final email = await ref
                            .read(preferenceManagerProvider)
                            .getString(keyUserEmail);

                        if (!email.isBlank) {
                          context.push(
                            routeSupportTicketMessage,
                            extra: EmailTicketId(
                              email: email!,
                              ticketId: supportTicket.id,
                              ticketTitle: supportTicket.title,
                            ),
                          );
                        } else {
                          LocaleKeys.somethingWentWrong
                              .tr()
                              .showSnackBar(context);
                        }
                      } catch (e) {
                        e.toString().showSnackBar(context);
                      }
                    },
                  ),
      ),
    );
  }

  Widget _getSupportTicketDetailsWidget(SupportTicket supportTicket) {
    final List<HeaderDataModel> headerDatas = [
      if (!supportTicket.description.isBlank) ...[
        HeaderDataModel(
          title: LocaleKeys.description.tr(),
          description: supportTicket.description,
        ),
      ],
      if (!supportTicket.ticketStatus.isBlank) ...[
        HeaderDataModel(
          title: "Status",
          description: supportTicket.ticketStatus!.replaceAll("_", ""),
        ),
      ],
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
          supportTicket.title,
          fontSize: titleFontSize,
          padding: EdgeInsets.zero,
          textAlign: TextAlign.start,
          fontWeight: FontWeight.bold,
        ),
        if (supportTicket.creationDate > 0) ...[
          const SizedBox(
            height: 4,
          ),
          Row(
            children: [
              const Icon(
                Icons.access_time,
                color: Colors.grey,
                size: 12,
              ),
              const SizedBox(
                width: 5,
              ),
              Flexible(
                child: TextWidget(
                  supportTicket.creationDate.formattedDateFromTimestamp(),
                  fontSize: 11,
                  color: Colors.grey,
                  padding: const EdgeInsets.only(top: 1),
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
        ],
        const SizedBox(
          height: 16,
        ),
        HeaderComponetListWidget(data: headerDatas),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
