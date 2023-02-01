import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';

abstract class QuoteRepository {
  Future<PaginationState> getAllPaginatedQuotes(
    int pageNo, {
    int? pageSize,
    Map<String, dynamic>? queryMap,
  });
}
