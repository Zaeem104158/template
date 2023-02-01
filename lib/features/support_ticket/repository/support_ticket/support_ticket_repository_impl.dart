import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';
import 'package:thrive_mobile_app/app/model/common/common_response.dart';
import 'package:thrive_mobile_app/app/values/app_types.dart';
import 'package:thrive_mobile_app/app/values/constants.dart';
import 'package:thrive_mobile_app/features/support_ticket/model/support_ticket/support_ticket.dart';
import 'package:thrive_mobile_app/features/support_ticket/model/support_ticket_response/support_ticket_response.dart';
import 'package:thrive_mobile_app/shared/network/api_client_provider.dart';
import 'package:thrive_mobile_app/shared/preference/preference_manager.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';

import 'support_ticket_repository.dart';
import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';

class SupportTicketRepositoryImpl implements SupportTicketRepository {
  final ApiClient _apiClient;
  final PreferenceManager _preferenceManager;

  const SupportTicketRepositoryImpl(
    this._apiClient,
    this._preferenceManager,
  );

  @override
  Future<PaginationState> getAllPaginatedSupportTicket(
    int pageNo, {
    int? pageSize,
    Map<String, dynamic>? queryMap,
  }) async {
    try {
      final email = await _preferenceManager.getString(keyUserEmail);

      final response = await _apiClient.getRequest(
        "/support-ticket/ticket/all",
        query: {
          "email": email,
          pageNoParam: pageNo,
          sortByParam: sortByValue,
          ascOrDescParam: SortByType.desc.name,
          pageSizeParam: pageSize ?? defaultPageSize,
          ...?queryMap,
        },
      );

      return response.when(success: (success) {
        final supportTicketPayload =
            SupportTicketResponse.fromJson(success).payload;

        if (supportTicketPayload.content.isBlank) {
          return PaginationState(
            error: LocaleKeys.noDataFound.tr(),
          );
        } else {
          return PaginationState(
            datas: supportTicketPayload.content,
            isLastPage: supportTicketPayload.last,
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

  @override
  Future<CommonResponse> createSupportTicket(
    Map<String, dynamic> request,
  ) async {
    request['name'] = await _preferenceManager.getString(keyUserName);
    request['type'] = await _preferenceManager.getString(keyUserType);
    request['userEmail'] = await _preferenceManager.getString(keyUserEmail);

    final response = await _apiClient.postRequest(
      "/support-ticket/create",
      request,
    );

    return response.when(success: (success) {
      final _commonResponse = CommonResponse.fromJson(success);
      final _supportTicket = SupportTicket.fromJson(_commonResponse.payload);
      return _commonResponse.copyWith(payload: _supportTicket);
    }, error: (error) {
      return CommonResponse(
        success: false,
        message: error,
      );
    });
  }
}
