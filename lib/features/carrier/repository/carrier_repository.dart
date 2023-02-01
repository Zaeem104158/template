import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';

abstract class CarrierRepository {
  Future<PaginationState> getAllPaginatedCarrier(
    int pageNo, {
    int? pageSize,
    Map <String, dynamic>? queryMap,
  });
}
