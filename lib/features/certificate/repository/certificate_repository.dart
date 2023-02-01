import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';
import '../../../app/model/common/common_response.dart';

abstract class CertificateRepository {
  Future<PaginationState> getAllPaginatedCertificate(
    int pageNo, {
    int? pageSize,
    Map<String, dynamic>? queryMap,
  });
  
  Future<CommonResponse> createCertificate(
    Map<String, dynamic> request,
  );
}
