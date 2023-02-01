import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';
import 'package:thrive_mobile_app/app/model/common/common_response.dart';
import 'package:thrive_mobile_app/app/model/db_file/db_file.dart';
import 'package:thrive_mobile_app/app/repository/common_repository.dart';
import 'package:thrive_mobile_app/app/values/app_types.dart';
import 'package:thrive_mobile_app/app/values/constants.dart';
import 'package:thrive_mobile_app/features/claim/model/claim/claim.dart';
import 'package:thrive_mobile_app/features/claim/model/claim_response/claim_response.dart';
import 'package:thrive_mobile_app/features/claim/repository/claim_repository.dart';
import 'package:thrive_mobile_app/shared/network/api_client_provider.dart';
import 'package:thrive_mobile_app/shared/preference/preference_manager.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';
import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';

class ClaimRepositoryImpl implements ClaimRepository {
  final ApiClient _apiClient;
  final CommonRepository _commonRepository;
  final PreferenceManager _preferenceManager;

  const ClaimRepositoryImpl(
    this._apiClient,
    this._commonRepository,
    this._preferenceManager,
  );

  @override
  Future<PaginationState> getAllPaginatedClaim(
    int pageNo, {
    int? pageSize,
    Map<String, dynamic>? queryMap,
  }) async {
    final response = await _apiClient.getRequest(
      "/claim/all",
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
      final payload = ClaimResponse.fromJson(success).payload;

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

  @override
  Future<CommonResponse> createClaim(
    Map<String, dynamic> request,
  ) async {
    if (request[attachmentPath] != null) {
      final dbFileResponse = await _uplaodAttachment(request[attachmentPath]);

      if (dbFileResponse.success == true) {
        final dbFile = DbFile.fromJson(dbFileResponse.payload);
        request["dbfileIds"] = [dbFile.id];
      }
    }

    request['claimCreatedBy'] = await _preferenceManager.getString(keyUserType);
    String? accidentDate = request['dateOfAccident'];

    if (!accidentDate.isBlank) {
      late final DateFormat dateFormat;
      final String format = "dd/MM/yyyy";

      if (accidentDate!.contains("AM") || accidentDate.contains("PM")) {
        dateFormat = DateFormat("$format hh:mm a");
      } else {
        dateFormat = DateFormat(format);
      }

      final DateTime dateTime = dateFormat.parse(accidentDate);
      request['dateOfAccident'] = "${dateTime.toIso8601String()}Z";
    }

    final response = await _apiClient.postRequest(
      "/claim/create-claim",
      request,
    );

    return response.when(success: (success) {
      final _commonResponse = CommonResponse.fromJson(success);
      final _claim = Claim.fromJson(_commonResponse.payload);
      return _commonResponse.copyWith(payload: _claim);
    }, error: (error) {
      return CommonResponse(
        success: false,
        message: error,
      );
    });
  }

  Future<CommonResponse> _uplaodAttachment(String filePath) async {
    return await _commonRepository.uploadFile(
      apiPath: "/file/upload",
      filePath: filePath,
      formDataName: "file",
      query: {
        "fileType": filePath.split('.').last,
        "fileUploadType": FileUploadType.CLAIM.name,
      },
    );
  }
}
