import 'dart:collection';

import 'package:go_router/go_router.dart';
import 'package:thrive_mobile_app/app/provider/core_provider.dart';
import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';
import 'package:thrive_mobile_app/app/values/app_types.dart';
import 'package:thrive_mobile_app/features/error/paginated_error_widget.dart';
import 'package:thrive_mobile_app/shared/utils/util.dart';
import 'package:thrive_mobile_app/app/model/details_page_model.dart';
import 'package:thrive_mobile_app/app/model/header_data_model.dart';
import 'package:thrive_mobile_app/app/routes/route_paths.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';
import 'package:thrive_mobile_app/app/widget/shimmer_widget.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';
import 'package:thrive_mobile_app/features/details/header_componet_list_widget.dart';
import 'package:thrive_mobile_app/features/opportunity/model/opportunity/opportunity.dart';
import 'package:thrive_mobile_app/features/opportunity/provider/opportunity_provider.dart';

import 'package:flutter/material.dart';
import '../../../app/widget/popup_menu_button_widget.dart';
import '../../../app/widget/refresh_indicator_widget.dart';
import 'opportunity_list_view_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/app/widget/appbar_widget.dart';

class OpportunityPage extends ConsumerWidget {
  OpportunityPage({
    Key? key,
    this.isFromNavigationDrawer,
  }) : super(key: key);

  final bool? isFromNavigationDrawer;

  void _filterOpportunityData(WidgetRef ref, Debouncer debouncer) {
    debouncer.call(() {
      final notifier = ref.read(opportunityPaginatedStateProvider.notifier);

      Map<String, dynamic> queryMap = HashMap();
      final statusIndex = ref.read(statusProvider);
      if (statusIndex > 0) {
        queryMap['status'] = OpportunityStatus.values[statusIndex].name;
      }

      notifier.getPaginatedData(
        fromRefresh: true,
        queryMap: queryMap,
      );
    });
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<PaginationState>(opportunityPaginatedStateProvider,
        (prev, next) {
      if (next.isPaginatedError) {
        next.error.showSnackBar(context);
      }
    });

    final _debouncer = ref.watch(debouncerProvider);
    final _scrollController = ref.watch(scrollControllerProvider);
    final _opportunityState = ref.watch(opportunityPaginatedStateProvider);
    final _opportunityNotifier =
        ref.read(opportunityPaginatedStateProvider.notifier);
    _opportunityNotifier.scrollListener(_scrollController);

    return Scaffold(
      appBar: AppBarWidget(
        title: LocaleKeys.quoteRequest.tr(),
        isMenuIcon: isFromNavigationDrawer == true,
        isShowNavigateIcon:
            isFromNavigationDrawer == null || isFromNavigationDrawer == false,
        actionWidgets: [
          SortByPopUpMenuWidget(
            values: OpportunityStatus.values.map((e) => e.name).toList(),
            onSelected: (value) {
              _filterOpportunityData(ref, _debouncer);
            },
          ),
        ],
      ),
      body: RefreshIndicatorWidget(
        onRefresh: () => _opportunityNotifier.getPaginatedData(
          fromRefresh: true,
        ),
        child: _opportunityState.isLoading
            ? const ShimmerWidget(
                widget: OpportunityListViewWidget(),
              )
            : _opportunityNotifier.isErrorOccurred()
                ? PaginatedErrorWidget(
                    notifier: _opportunityNotifier,
                    state: _opportunityState,
                  )
                : OpportunityListViewWidget(
                    isFetchingNext: _opportunityState.isFetchingNext,
                    opportunities:
                        convertToOpportunityData(_opportunityState.datas),
                    scrollController: _scrollController,
                    onPressed: (opportunity) {
                      context.push(
                        routeDetails,
                        extra: DetailsPageModel(
                          widget: _getOpportunityDetailsWidget(opportunity),
                          imageUrls: [],
                        ),
                      );
                    },
                  ),
      ),
    );
  }

  Widget _getOpportunityDetailsWidget(Opportunity opportunity) {
    final contact = opportunity.contact;
    final agent = contact?.agent;

    final List<HeaderDataModel> headerDatas = [
      if (!agent?.name.isBlank) ...[
        HeaderDataModel(
          title: "Agent ${LocaleKeys.name.tr()}",
          description: agent?.name,
        ),
      ],
      if (!agent?.email.isBlank) ...[
        HeaderDataModel(
          title: "Agent ${LocaleKeys.email.tr()}",
          description: agent?.email,
        ),
      ],
      if (!contact?.phone.isBlank) ...[
        HeaderDataModel(
          title: LocaleKeys.phone.tr(),
          description: agent?.email,
        ),
      ],
      if (!opportunity.status.isBlank) ...[
        HeaderDataModel(
          title: LocaleKeys.status.tr(),
          description: opportunity.status,
        ),
      ],
      HeaderDataModel(
        title: LocaleKeys.premium.tr(),
        description: "\$${contact?.premium}",
      ),
      if (!opportunity.insuranceName.isBlank) ...[
        HeaderDataModel(
          title: LocaleKeys.insurance.tr(),
          description: opportunity.insuranceName,
        ),
      ],
      if (opportunity.creationDateTimeStamp > 0) ...[
        HeaderDataModel(
          title: LocaleKeys.createdAt.tr(),
          description:
              opportunity.creationDateTimeStamp.formattedDateFromTimestamp(),
        ),
      ],
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderComponetListWidget(data: headerDatas),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
