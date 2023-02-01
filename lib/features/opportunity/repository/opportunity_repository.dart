import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';

abstract class OpportunityRepository {
  Future<PaginationState> getAllPaginatedOpportunities(
    int pageNo, {
    int? pageSize,
    Map<String, dynamic>? queryMap,
  });
}
