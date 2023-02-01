import 'package:thrive_mobile_app/app/model/common/common_response.dart';
import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';

abstract class ClaimRepository {
  Future<PaginationState> getAllPaginatedClaim(
    int pageNo, {
    int? pageSize,
    Map <String, dynamic>? queryMap,
  });

  Future<CommonResponse> createClaim(
    Map<String, dynamic> request,
  );
}
