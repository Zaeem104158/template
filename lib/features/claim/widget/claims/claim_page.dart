import 'dart:collection';
import 'package:go_router/go_router.dart';
import 'package:thrive_mobile_app/app/exports/app_values_export.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';
import 'package:thrive_mobile_app/app/model/details_page_model.dart';
import 'package:thrive_mobile_app/app/model/header_data_model.dart';
import 'package:thrive_mobile_app/app/provider/core_provider.dart';
import 'package:thrive_mobile_app/app/routes/route_paths.dart';
import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';
import 'package:thrive_mobile_app/app/values/app_types.dart';
import 'package:thrive_mobile_app/app/widget/shimmer_widget.dart';
import 'package:thrive_mobile_app/app/widget/text_form_field_wiget.dart';
import 'package:thrive_mobile_app/app/widget/text_widget.dart';
import 'package:thrive_mobile_app/features/claim/model/claim/claim.dart';
import 'package:thrive_mobile_app/features/claim/provider/claim_provider.dart';
import 'package:thrive_mobile_app/features/details/header_componet_list_widget.dart';
import 'package:thrive_mobile_app/features/error/paginated_error_widget.dart';
import 'package:thrive_mobile_app/shared/utils/util.dart';

import '../../../../app/widget/popup_menu_button_widget.dart';
import '../../../../app/widget/refresh_indicator_widget.dart';
import 'claim_list_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/app/widget/appbar_widget.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';

class ClaimPage extends ConsumerWidget {
  ClaimPage({
    Key? key,
    this.isFromNavigationDrawer,
  }) : super(key: key);

  final bool? isFromNavigationDrawer;

  final claimSortTypes = ClaimSortType.values
      .where((element) =>
          element != ClaimSortType.All && element != ClaimSortType.Accident_At)
      .toList();

  void _filteClaimData(WidgetRef ref, Debouncer debouncer, {String? query}) {
    debouncer.call(() {
      final notifier = ref.read(claimStateProvider.notifier);
      Map<String, dynamic> queryMap = HashMap();

      final sortIndex = ref.watch(statusProvider);
      if (sortIndex > 0) {
        queryMap[ascOrDescParam] = SortByType.desc.name;
        queryMap[sortByParam] = ClaimSortType.values[sortIndex].nameValue;
      }

      final searchBy = ref.watch(claimSearchTypeProvider);
      queryMap[searchBy.nameValue] = query ?? "";

      notifier.getPaginatedData(
        fromRefresh: true,
        queryMap: queryMap,
      );
    });
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _debouncer = ref.watch(debouncerProvider);

    return Scaffold(
      appBar: AppBarWidget(
        isMenuIcon: isFromNavigationDrawer == true,
        isShowNavigateIcon:
            isFromNavigationDrawer == null || isFromNavigationDrawer == false,
        title: LocaleKeys.claim.tr(),
        actionWidgets: [
          InkWell(
            child: const Padding(
              padding: EdgeInsets.only(
                top: 3,
                left: 5,
              ),
              child: Icon(Icons.add_circle_sharp),
            ),
            onTap: () {
              context.hideSnackBar();
              context.push(routeCreateClaim);
            },
          ),
          SortByPopUpMenuWidget(
            values: ClaimSortType.values.map((e) => e.name).toList(),
            onSelected: (value) {
              _filteClaimData(ref, _debouncer);
            },
          ),
        ],
      ),
      body: Consumer(
        builder: (context, ref, child) {
          ref.listen<PaginationState>(claimStateProvider, (prev, next) {
            if (next.isPaginatedError) {
              next.error.showSnackBar(context);
            }
          });

          final _claimState = ref.watch(claimStateProvider);
          final _claimNotifier = ref.read(claimStateProvider.notifier);
          final _scrollController = ref.watch(scrollControllerProvider);
          final _textEditingController =
              ref.watch(textEditingControllerProvider);
          _claimNotifier.scrollListener(_scrollController);

          return RefreshIndicatorWidget(
            onRefresh: () => _claimNotifier.getPaginatedData(
              fromRefresh: true,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextFormFieldWidget(
                        isValidate: false,
                        prefixIcon: Icons.search,
                        hint:
                            "${LocaleKeys.search.tr()} by ${ref.watch(claimSearchTypeProvider).name.replaceAll("_", " ")}",
                        controller: _textEditingController,
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        inputDecorationBorder: const OutlineInputBorder(),
                        padding: const EdgeInsets.fromLTRB(12, 12, 10, 0),
                        contentPadding: const EdgeInsets.fromLTRB(0, 0, 14, 8),
                        onChanged: (value) => _filteClaimData(
                          ref,
                          _debouncer,
                          query: value,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 11.5,
                        right: 16,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(8, 12, 0, 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: colorFadeAsh,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            alignment: Alignment.center,
                            isDense: true,
                            value: ref.watch(claimSearchTypeProvider),
                            items: claimSortTypes.map((item) {
                              return DropdownMenuItem(
                                value: item,
                                child: Text(item.name.replaceAll("_", " ")),
                              );
                            }).toList(),
                            onChanged: (value) {
                              if (value is ClaimSortType) {
                                final searchNotifier = ref.read(
                                  claimSearchTypeProvider.notifier,
                                );

                                if (searchNotifier.state != value) {
                                  _textEditingController.text = "";
                                  searchNotifier.state = value;
                                  _filteClaimData(ref, _debouncer);
                                }
                              }
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                if (_claimState.isLoading) ...[
                  Expanded(
                    child: ShimmerWidget(
                      widget: ClaimListViewWidget(),
                    ),
                  ),
                ] else if (_claimNotifier.isErrorOccurred()) ...[
                  Expanded(
                    child: PaginatedErrorWidget(
                      notifier: _claimNotifier,
                      state: _claimState,
                    ),
                  ),
                ] else ...[
                  Expanded(
                    child: ClaimListViewWidget(
                      isFetchingNext: _claimState.isFetchingNext,
                      scrollController: _scrollController,
                      claims: convertToClaimData(_claimState.datas),
                      onTapCard: (claim) {
                        context.push(
                          routeDetails,
                          extra: DetailsPageModel(
                            imageUrls: _getPhotoUrls(claim),
                            widget: _getClaimDetailsWidget(claim),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ],
            ),
          );
        },
      ),
    );
  }

  List<String> _getPhotoUrls(Claim claim) {
    final List<String> urls = [];

    for (final photo in claim.photos) {
      if (!photo.fileUrl.isBlank) {
        urls.add(photo.fileUrl);
      }
    }

    return urls;
  }

  Widget _getClaimDetailsWidget(Claim claim) {
    final List<HeaderDataModel> headerDatas = [
      if (!claim.policyNumber.isBlank) ...[
        HeaderDataModel(
          title: LocaleKeys.policyNo.tr(),
          description: claim.policyNumber,
        ),
      ],
      if (!claim.productName.isBlank) ...[
        HeaderDataModel(
          title: LocaleKeys.product.tr(),
          description: claim.productName,
        ),
      ],
      if (!claim.agencyName.isBlank) ...[
        HeaderDataModel(
          title: LocaleKeys.agency.tr(),
          description: claim.agencyName,
        ),
      ],
      if (!claim.incidentDescription.isBlank) ...[
        HeaderDataModel(
          title: LocaleKeys.incident.tr(),
          description: claim.incidentDescription,
        ),
      ],
      if (claim.dateOfAccident > 0) ...[
        HeaderDataModel(
          title: LocaleKeys.dateOfAccident.tr(),
          description: claim.dateOfAccident.formattedDateFromTimestamp(),
        ),
      ],
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
          claim.agencyName,
          fontSize: titleFontSize,
          padding: EdgeInsets.zero,
          textAlign: TextAlign.start,
          fontWeight: FontWeight.bold,
        ),
        if (claim.creationDateTimeStamp > 0) ...[
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
                  claim.creationDateTimeStamp.formattedDateFromTimestamp(),
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
