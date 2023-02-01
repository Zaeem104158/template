import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';
import 'package:thrive_mobile_app/app/model/common/common_response.dart';
import 'package:thrive_mobile_app/app/model/db_file/db_file.dart';
import 'package:thrive_mobile_app/app/values/app_types.dart';
import 'package:thrive_mobile_app/app/values/constants.dart';
import 'package:thrive_mobile_app/features/support_ticket/model/support_ticket_message/support_ticket_message.dart';
import 'package:thrive_mobile_app/features/support_ticket/model/support_ticket_message_response/support_ticket_message_response.dart';
import 'package:thrive_mobile_app/shared/network/api_client_provider.dart';
import 'package:thrive_mobile_app/shared/preference/preference_manager.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';

import 'package:thrive_mobile_app/app/repository/common_repository.dart';
import 'support_ticket_message_repository.dart';
import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';

class SupportTicketMessageRepositoryImpl
    implements SupportTicketMessageRepository {
  final ApiClient _apiClient;
  final PreferenceManager _preferenceManager;
  final CommonRepository _commonRepository;

  const SupportTicketMessageRepositoryImpl(
    this._apiClient,
    this._preferenceManager,
    this._commonRepository,
  );

  @override
  Future<PaginationState> getAllPaginatedSupportTicketMessage(
    int pageNo, {
    int? pageSize,
    Map<String, dynamic>? queryMap,
  }) async {
    try {
      final response = await _apiClient.getRequest(
        "/support-ticket/message/all",
        query: {
          pageNoParam: pageNo,
          sortByParam: sortByValue,
          ascOrDescParam: SortByType.desc.name,
          pageSizeParam: pageSize ?? defaultPageSize,
          ...?queryMap,
        },
      );

      return response.when(success: (success) {
        final supportTicketMessagePayload =
            SupportTicketMessageResponse.fromJson(success).payload;

        if (supportTicketMessagePayload.content.isBlank) {
          return PaginationState(
            error: LocaleKeys.noDataFound.tr(),
          );
        } else {
          return PaginationState(
            datas: supportTicketMessagePayload.content,
            isLastPage: supportTicketMessagePayload.last,
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
  Future<CommonResponse> createSupportTicketMessage(
    Map<String, dynamic> request,
  ) async {
    if (request[attachmentPath] != null) {
      final dbFileResponse =
          await _uplaodMessageAttachment(request[attachmentPath]);

      if (dbFileResponse.success == true) {
        final dbFile = DbFile.fromJson(dbFileResponse.payload);
        request["fileIds"] = [dbFile.id];
      }
    }

    request['name'] = await _preferenceManager.getString(keyUserName);
    request['email'] = await _preferenceManager.getString(keyUserEmail);
    request['type'] = await _preferenceManager.getString(keyUserType);

    final response = await _apiClient.postRequest(
      "/support-ticket/message/create",
      request,
    );

    return response.when(success: (success) {
      final _commonResponse = CommonResponse.fromJson(success);
      final _supportTicketMessage =
          SupportTicketMessage.fromJson(_commonResponse.payload);
      return _commonResponse.copyWith(payload: _supportTicketMessage);
    }, error: (error) {
      return CommonResponse(
        success: false,
        message: error,
      );
    });
  }

  Future<CommonResponse> _uplaodMessageAttachment(String filePath) async {
    return await _commonRepository.uploadFile(
      apiPath: "/support-ticket/file/upload",
      filePath: filePath,
      formDataName: "file",
      query: {
        "fileType": filePath.split('.').last,
        "fileUploadType": FileUploadType.ATTACHMENT.name,
      },
    );
  }
}
