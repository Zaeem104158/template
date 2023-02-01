import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';
import 'package:thrive_mobile_app/app/values/app_types.dart';
import 'package:thrive_mobile_app/app/values/constants.dart';
import 'package:thrive_mobile_app/features/opportunity/model/opportunity_response/opportunity_response.dart';
import 'package:thrive_mobile_app/shared/network/api_client_provider.dart';
import 'package:thrive_mobile_app/shared/preference/preference_manager.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';

import 'opportunity_repository.dart';
import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';

class OpportunityRepositoryImpl implements OpportunityRepository {
  final ApiClient _apiClient;
  final PreferenceManager _preferenceManager;

  const OpportunityRepositoryImpl(
    this._apiClient,
    this._preferenceManager,
  );

  @override
  Future<PaginationState> getAllPaginatedOpportunities(
    int pageNo, {
    int? pageSize,
    Map<String, dynamic>? queryMap,
  }) async {
    try {
      final id = await _preferenceManager.getInt(keyUserId);

      final response = await _apiClient.getRequest(
        "/opportunity/all",
        query: {
          "customer": id,
          "isDeleted": false,
          pageNoParam: pageNo,
          sortByParam: sortByValue,
          ascOrDescParam: SortByType.desc.name,
          pageSizeParam: pageSize ?? defaultPageSize,
          ...?queryMap,
        },
      );

      return response.when(success: (success) {
        final opportunityPayload =
            OpportunityResponse.fromJson(success).payload;

        if (opportunityPayload.content.isBlank) {
          return PaginationState(
            error: LocaleKeys.noDataFound.tr(),
          );
        } else {
          return PaginationState(
            datas: opportunityPayload.content,
            isLastPage: opportunityPayload.last,
          );
        }
      }, error: (error) {
        return PaginationState(
          error: error,
        );
      });
    } catch (e) {
      return PaginationState(
        error: e.toString(),
      );
    }
  }
}
