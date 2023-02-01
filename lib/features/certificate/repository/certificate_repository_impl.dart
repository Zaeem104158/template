import 'certificate_repository.dart';
import '../model/certificate/certificate.dart';
import '../../../app/model/common/common_response.dart';
import 'package:thrive_mobile_app/app/values/app_types.dart';
import 'package:thrive_mobile_app/app/values/constants.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';
import 'package:thrive_mobile_app/shared/network/api_client_provider.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';
import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';
import 'package:thrive_mobile_app/features/certificate/model/certificate_response/certificate_response.dart';

class CertificateRepositoryImpl implements CertificateRepository {
  final ApiClient _apiClient;

  const CertificateRepositoryImpl(this._apiClient);

  @override
  Future<PaginationState> getAllPaginatedCertificate(
    int pageNo, {
    int? pageSize,
    Map<String, dynamic>? queryMap,
  }) async {
    final response = await _apiClient.getRequest(
      "/certificates/all",
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
      final payload = CertificateResponse.fromJson(success).payload;

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
  Future<CommonResponse> createCertificate(
    Map<String, dynamic> request,
  ) async {
    final response = await _apiClient.postRequest(
      "/certificates/create-certificate",
      request,
    );

    return response.when(success: (success) {
      final _commonResponse = CommonResponse.fromJson(success);
      final _certificate =
          Certificate.fromJson(_commonResponse.payload).copyWith(
        policy: request['policy'],
      );
      return _commonResponse.copyWith(payload: _certificate);
    }, error: (error) {
      return CommonResponse(
        success: false,
        message: error,
      );
    });
  }
}
