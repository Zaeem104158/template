import 'dart:collection';
import 'dart:developer';
import 'policy_list_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/shared/utils/util.dart';
import '../../../app/widget/refresh_indicator_widget.dart';
import '../../../app/widget/popup_menu_button_widget.dart';
import 'package:thrive_mobile_app/app/values/app_fonts.dart';
import 'package:thrive_mobile_app/app/values/app_types.dart';
import '../../claim/widget/claims/claim_list_view_widget.dart';
import 'package:thrive_mobile_app/app/routes/route_paths.dart';
import 'package:thrive_mobile_app/app/widget/text_widget.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';
import 'package:thrive_mobile_app/app/widget/appbar_widget.dart';
import 'package:thrive_mobile_app/app/widget/shimmer_widget.dart';
import 'package:thrive_mobile_app/app/provider/core_provider.dart';
import 'package:thrive_mobile_app/app/model/header_data_model.dart';
import 'package:thrive_mobile_app/app/model/details_page_model.dart';
import 'package:thrive_mobile_app/features/doc/model/doc_page_data.dart';
import 'package:thrive_mobile_app/features/policy/model/policy/policy.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';
import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';
import 'package:thrive_mobile_app/features/error/paginated_error_widget.dart';
import 'package:thrive_mobile_app/features/policy/provider/policy_provider.dart';
import 'package:thrive_mobile_app/features/details/header_componet_list_widget.dart';
import 'package:thrive_mobile_app/features/certificate/model/certificate/certificate.dart';
import 'package:thrive_mobile_app/features/certificate/provider/certificate_provider.dart';

class PolicyPage extends ConsumerWidget {
  PolicyPage({
    Key? key,
    this.isFromNavigationDrawer,
  }) : super(key: key);

  final bool? isFromNavigationDrawer;

  void _filterPolicyData(
    WidgetRef ref,
    Debouncer debouncer, {
    String? query,
  }) {
    debouncer.call(() {
      final notifier = ref.read(policyStateProvider.notifier);

      Map<String, dynamic> queryMap = HashMap();
      queryMap['title'] = !query.isBlank ? query : "";

      final statusIndex = ref.read(statusProvider);
      if (statusIndex > 0) {
        queryMap['policyType'] = PolicyStatus.values[statusIndex].name;
      }

      notifier.getPaginatedData(
        fromRefresh: true,
        queryMap: queryMap,
      );
    });
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<PaginationState>(certificateStateProvider, (prev, next) {
      final error = next.error;

      if (!error.isBlank &&
          (error != LocaleKeys.internetConnectivityProblem.tr() &&
              error != LocaleKeys.noDataFound.tr())) {
        error.showSnackBar(context);
      }

      if (next.isCreateUpdating && !next.datas.isBlank) {
        final _certificate = next.datas[0] as Certificate;
        context.push(routeCertificate, extra: _certificate.policy);
      }
    });

    ref.listen<PaginationState>(policyStateProvider, (prev, next) {
      log("can pop: ${GoRouter.of(context).navigator?.canPop()}");
      log("location: ${GoRouter.of(context).location}");

      if (next.isPaginatedError) {
        next.error.showSnackBar(context);
      }
    });

    final _debouncer = ref.watch(debouncerProvider);
    final _policyState = ref.watch(policyStateProvider);
    final _scrollController = ref.watch(scrollControllerProvider);
    final _policyNotifier = ref.read(policyStateProvider.notifier);
    _policyNotifier.scrollListener(_scrollController);

    return Scaffold(
      appBar: AppBarWidget(
        isMenuIcon: isFromNavigationDrawer == true,
        isShowNavigateIcon:
            isFromNavigationDrawer == null || isFromNavigationDrawer == false,
        title: LocaleKeys.policy.tr(),
        actionWidgets: [
          InkWell(
            onTap: () {
              context.hideSnackBar();
              context.push(
                routeDoc,
                extra: DocPageData(
                  title: LocaleKeys.policyDoc.tr(),
                  docType: DocType.POLICY,
                  fileUploadType: FileUploadType.POLICY,
                ),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(
                top: 3,
                left: 5,
              ),
              child: const Icon(
                Icons.add_circle_sharp,
                size: 26,
              ),
            ),
          ),
          SortByPopUpMenuWidget(
            values: PolicyStatus.values.map((e) => e.name).toList(),
            onSelected: (value) {
              _filterPolicyData(ref, _debouncer);
            },
          ),
        ],
      ),
      body: RefreshIndicatorWidget(
        onRefresh: () => _policyNotifier.getPaginatedData(
          fromRefresh: true,
        ),
        child: _policyState.isLoading
            ? ShimmerWidget(
                widget: ClaimListViewWidget(),
              )
            : _policyNotifier.isErrorOccurred()
                ? PaginatedErrorWidget(
                    notifier: _policyNotifier,
                    state: _policyState,
                  )
                : PolicyListViewWidget(
                    scrollController: _scrollController,
                    isFetchingNext: _policyState.isFetchingNext,
                    isCertificateCreating: ref.watch(certificateStateProvider
                        .select((value) => value.isLoading)),
                    policies: convertToPolicyData(_policyState.datas),
                    onPressed: (policy) {
                      context.push(
                        routeDetails,
                        extra: DetailsPageModel(
                          imageUrls: [],
                          widget: _getPolicyDetailsWidget(policy),
                        ),
                      );
                    },
                    onViewCertificate: (policy) => context.push(
                      routeCertificate,
                      extra: policy,
                    ),
                    onRequestCertificate: (policy) {
                      showAlertDialog(
                        context,
                        LocaleKeys.requestCertificate.tr(),
                        confirmText: LocaleKeys.request.tr(),
                        clickEvent: (onConfirm, onCancel) {
                          if (onConfirm) {
                            final request = {
                              "policy": policy,
                              "policyId": policy.id,
                              "certificateStatus":
                                  CertificateStatus.REQUESTED.name,
                            };

                            ref
                                .read(certificateStateProvider.notifier)
                                .createData(request);
                          }
                        },
                      );
                    },
                  ),
      ),
    );
  }

  Widget _getPolicyDetailsWidget(Policy policy) {
    final List<HeaderDataModel> headerDatas = [
      HeaderDataModel(
        title: LocaleKeys.premium.tr(),
        description: "\$${policy.premium}",
      ),
      if (!policy.carrierName.isBlank) ...[
        HeaderDataModel(
          title: LocaleKeys.carrier.tr(),
          description: policy.carrierName,
        ),
      ],
      if (!policy.insuranceName.isBlank) ...[
        HeaderDataModel(
          title: LocaleKeys.insurance.tr(),
          description: policy.insuranceName,
        ),
      ],
      if (policy.effectiveDate > 0) ...[
        HeaderDataModel(
          title: LocaleKeys.effectiveDate.tr(),
          description: policy.effectiveDate.formattedDateFromTimestamp(),
        ),
      ],
      if (policy.expiredDate > 0) ...[
        HeaderDataModel(
          title: LocaleKeys.expireDate.tr(),
          description: policy.expiredDate.formattedDateFromTimestamp(),
        ),
      ],
      if (!policy.policyType.isBlank) ...[
        HeaderDataModel(
          title: LocaleKeys.policyType.tr(),
          description: policy.policyType,
        ),
      ],
      if (!policy.source.isBlank) ...[
        HeaderDataModel(
          title: LocaleKeys.source.tr(),
          description: policy.source,
        ),
      ],
      if (!policy.importedAgent.isBlank) ...[
        HeaderDataModel(
          title: LocaleKeys.importedAgent.tr(),
          description: policy.importedAgent,
        ),
      ],
      if (!policy.policyTerm.isBlank) ...[
        HeaderDataModel(
          title: LocaleKeys.policyTerm.tr(),
          description: policy.policyTerm,
        ),
      ],
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
          policy.policyNumber.toString(),
          fontSize: titleFontSize,
          padding: EdgeInsets.zero,
          textAlign: TextAlign.start,
          fontWeight: FontWeight.bold,
        ),
        if (policy.creationDateTimeStamp > 0) ...[
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
                  policy.creationDateTimeStamp.formattedDateFromTimestamp(),
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
