import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';

abstract class PolicyRepository {
  Future<PaginationState> getAllPaginatedPolicy(
    int pageNo, {
    int? pageSize,
    Map<String, dynamic>? queryMap,
  });
}
