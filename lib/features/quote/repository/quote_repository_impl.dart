import 'package:thrive_mobile_app/app/values/app_types.dart';
import 'package:thrive_mobile_app/app/values/constants.dart';
import 'package:thrive_mobile_app/shared/network/api_client_provider.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';
import 'package:thrive_mobile_app/features/quote/model/quote_response/quote_response.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';

import 'quote_repository.dart';
import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';

class QuoteRepositoryImpl implements QuoteRepository {
  final ApiClient _apiClient;

  const QuoteRepositoryImpl(this._apiClient);

  @override
  Future<PaginationState> getAllPaginatedQuotes(
    int pageNo, {
    int? pageSize,
    Map<String, dynamic>? queryMap,
  }) async {
    try {
      final response = await _apiClient.getRequest(
        "/quotes/all",
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
        final quotePayload = QuoteResponse.fromJson(success).payload;

        if (quotePayload.content.isBlank) {
          return PaginationState(
            error: LocaleKeys.noDataFound.tr(),
          );
        } else {
          return PaginationState(
            datas: quotePayload.content,
            isLastPage: quotePayload.last,
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
