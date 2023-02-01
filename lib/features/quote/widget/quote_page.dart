import 'dart:collection';

import 'package:go_router/go_router.dart';
import 'package:thrive_mobile_app/app/provider/core_provider.dart';
import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';
import 'package:thrive_mobile_app/app/values/app_types.dart';
import 'package:thrive_mobile_app/features/error/paginated_error_widget.dart';
import 'package:thrive_mobile_app/features/quote/model/quote/quote.dart';
import 'package:thrive_mobile_app/features/quote/provider/quote_provider.dart';
import 'package:thrive_mobile_app/features/quote/widget/quote_list_view_widget.dart';
import 'package:thrive_mobile_app/shared/utils/util.dart';
import 'package:thrive_mobile_app/app/model/details_page_model.dart';
import 'package:thrive_mobile_app/app/model/header_data_model.dart';
import 'package:thrive_mobile_app/app/routes/route_paths.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';
import 'package:thrive_mobile_app/app/widget/shimmer_widget.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';
import 'package:thrive_mobile_app/features/details/header_componet_list_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../app/widget/popup_menu_button_widget.dart';
import '../../../app/widget/refresh_indicator_widget.dart';
import 'package:thrive_mobile_app/app/widget/appbar_widget.dart';

class QuotePage extends ConsumerWidget {
  QuotePage({
    Key? key,
    this.isFromNavigationDrawer,
  }) : super(key: key);

  final bool? isFromNavigationDrawer;

  void _filterQuoteData(
    WidgetRef ref,
    Debouncer debouncer,
  ) {
    debouncer.call(() {
      final notifier = ref.read(quotePaginatedStateProvider.notifier);

      Map<String, dynamic> queryMap = HashMap();
      final statusIndex = ref.read(statusProvider);
      if (statusIndex > 0) {
        queryMap['quoteStatus'] = QuoteStatus.values[statusIndex].name;
      }

      notifier.getPaginatedData(
        fromRefresh: true,
        queryMap: queryMap,
      );
    });
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<PaginationState>(quotePaginatedStateProvider, (prev, next) {
      if (next.isPaginatedError) {
        next.error.showSnackBar(context);
      }
    });

    final _debouncer = ref.watch(debouncerProvider);
    final _quoteState = ref.watch(quotePaginatedStateProvider);
    final _scrollController = ref.watch(scrollControllerProvider);
    final _quoteNotifier = ref.read(quotePaginatedStateProvider.notifier);
    _quoteNotifier.scrollListener(_scrollController);

    return Scaffold(
      appBar: AppBarWidget(
        title: LocaleKeys.quote.tr(),
        isMenuIcon: isFromNavigationDrawer == true,
        isShowNavigateIcon:
            isFromNavigationDrawer == null || isFromNavigationDrawer == false,
        actionWidgets: [
          SortByPopUpMenuWidget(
            values: QuoteStatus.values.map((e) => e.name).toList(),
            onSelected: (value) {
              _filterQuoteData(ref, _debouncer);
            },
          ),
        ],
      ),
      body: RefreshIndicatorWidget(
        onRefresh: () => _quoteNotifier.getPaginatedData(
          fromRefresh: true,
        ),
        child: _quoteState.isLoading
            ? const ShimmerWidget(
                widget: QuoteListViewWidget(),
              )
            : _quoteNotifier.isErrorOccurred()
                ? PaginatedErrorWidget(
                    notifier: _quoteNotifier,
                    state: _quoteState,
                  )
                : QuoteListViewWidget(
                    isFetchingNext: _quoteState.isFetchingNext,
                    quotes: convertToQuoteData(_quoteState.datas),
                    scrollController: _scrollController,
                    onPressed: (quote) {
                      context.push(
                        routeDetails,
                        extra: DetailsPageModel(
                          widget: _getQuoteDetailsWidget(quote),
                          imageUrls: [],
                        ),
                      );
                    },
                  ),
      ),
    );
  }

  Widget _getQuoteDetailsWidget(Quote quote) {
    final contact = quote.contact;
    final agent = contact?.agent;

    final List<HeaderDataModel> headerDatas = [
      if (agent != null && !agent.name.isBlank) ...[
        HeaderDataModel(
          title: "Agent ${LocaleKeys.name.tr()}",
          description: agent.name,
        ),
      ],
      if (agent != null && !agent.email.isBlank) ...[
        HeaderDataModel(
          title: "Agent ${LocaleKeys.email.tr()}",
          description: agent.email,
        ),
      ],
      if (contact != null && !contact.phone.isBlank) ...[
        HeaderDataModel(
          title: LocaleKeys.phone.tr(),
          description: contact.phone,
        ),
      ],
      if (!quote.quoteStatus.isBlank) ...[
        HeaderDataModel(
          title: LocaleKeys.status.tr(),
          description: quote.quoteStatus,
        ),
      ],
      if (quote.carrier != null && !quote.carrier?.name.isBlank) ...[
        HeaderDataModel(
          title: LocaleKeys.carrier.tr(),
          description: quote.carrier?.name,
        ),
      ],
      HeaderDataModel(
        title: LocaleKeys.premium.tr(),
        description: "\$${quote.premiumAmount}",
      ),
      if (quote.effectiveDate > 0) ...[
        HeaderDataModel(
          title: LocaleKeys.effectiveDate.tr(),
          description: quote.effectiveDate.formattedDateFromTimestamp(),
        ),
      ],
      if (quote.creationDateTimeStamp > 0) ...[
        HeaderDataModel(
          title: LocaleKeys.createdAt.tr(),
          description: quote.creationDateTimeStamp.formattedDateFromTimestamp(),
        ),
      ],
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderComponetListWidget(
          data: headerDatas,
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
