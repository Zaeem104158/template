import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';
import 'package:thrive_mobile_app/app/values/app_types.dart';
import 'package:thrive_mobile_app/app/values/constants.dart';
import 'package:thrive_mobile_app/shared/network/api_client_provider.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';
import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';
import '../../../app/model/common/common_response.dart';
import '../../../app/model/db_file/db_file.dart';
import '../../../app/repository/common_repository.dart';
import '../../../shared/preference/preference_manager.dart';
import '../model/doc/doc.dart';
import '../model/doc_response/doc_response.dart';
import 'doc_repository.dart';

class DocRepositoryImpl implements DocRepository {
  final ApiClient _apiClient;
  final CommonRepository _commonRepository;
  final PreferenceManager _preferenceManager;

  const DocRepositoryImpl(
    this._apiClient,
    this._commonRepository,
    this._preferenceManager,
  );

  @override
  Future<PaginationState> getAllPaginatedDoc(
    int pageNo,
    DocType createdDocType, {
    int? pageSize,
    Map<String, dynamic>? queryMap,
  }) async {
    final response = await _apiClient.getRequest(
      "/docs/all",
      query: {
        "isDeleted": false,
        pageNoParam: pageNo,
        sortByParam: sortByValue,
        ascOrDescParam: SortByType.desc.name,
        "createdDocType": createdDocType.name,
        pageSizeParam: pageSize ?? defaultPageSize,
        ...?queryMap,
      },
    );

    return response.when(success: (success) {
      final payload = DocResponse.fromJson(success).payload;

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
  Future<CommonResponse> createDoc(
    DocType docType,
    Map<String, dynamic> request,
  ) async {
    DbFile? dbFile;

    if (request[attachmentPath] != null) {
      final dbFileResponse =
          await _uplaodDocAttachment(docType, request[attachmentPath]);

      if (dbFileResponse.success == true) {
        dbFile = DbFile.fromJson(dbFileResponse.payload);
        request["dbfileId"] = "${dbFile.id}";
      }
    }

    request['createdBy'] = await _preferenceManager.getString(keyUserType);
    final response = await _apiClient.postRequest(
      "/docs/create-doc",
      request,
    );

    return response.when(success: (success) {
      final _commonResponse = CommonResponse.fromJson(success);
      final _policyDocResponse = Doc.fromJson(_commonResponse.payload);

      return _commonResponse.copyWith(
        payload: _policyDocResponse.copyWith(
          dbFile: dbFile,
        ),
      );
    }, error: (error) {
      return CommonResponse(
        success: false,
        message: error,
      );
    });
  }

  Future<CommonResponse> _uplaodDocAttachment(
      DocType docType, String filePath) async {
    return await _commonRepository.uploadFile(
      apiPath: "/file/upload",
      filePath: filePath,
      formDataName: "file",
      query: {
        "fileType": filePath.split('.').last,
        "fileUploadType": docType.name,
      },
    );
  }

  @override
  Future<CommonResponse> deleteDoc(int id) async {
    final response = await _apiClient.deleteRequest(
      "/docs/delete-doc/id/$id",
    );

    return response.when(success: (success) {
      return CommonResponse.fromJson(success);
    }, error: (error) {
      return CommonResponse(
        status: false,
        message: error,
      );
    });
  }
}
