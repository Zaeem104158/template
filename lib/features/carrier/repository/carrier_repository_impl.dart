import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';
import 'package:thrive_mobile_app/app/values/constants.dart';
import 'package:thrive_mobile_app/features/carrier/model/carrier_response/carrier_response.dart';
import 'package:thrive_mobile_app/features/carrier/repository/carrier_repository.dart';
import 'package:thrive_mobile_app/shared/network/api_client_provider.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';
import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';

import '../../../app/values/app_types.dart';

class CarrierRepositoryImpl implements CarrierRepository {
  final ApiClient _apiClient;

  const CarrierRepositoryImpl(this._apiClient);

  @override
  Future<PaginationState> getAllPaginatedCarrier(
    int pageNo, {
    int? pageSize,
    Map<String, dynamic>? queryMap,
  }) async {
    final response = await _apiClient.getRequest(
      "/carrier/all",
      query: {
        "isDeleted": false,
        pageNoParam: pageNo,
        sortByParam: sortByValue,
        ascOrDescParam: SortByType.desc.name,
        pageSizeParam: pageSize ?? defaultPageSize,
        ...?queryMap,
      },
    );

    return response.when(success: (success) {
      final payload = CarrierResponse.fromJson(success).payload;

      if (payload.content.isBlank) {
        return PaginationState(
          error: LocaleKeys.noDataFound.tr(),
        );
      } else {
        return PaginationState(
          datas: payload.content,
          isLastPage: payload.last,
        );
      }
    }, error: (error) {
      return PaginationState(
        error: error,
      );
    });
  }
}
