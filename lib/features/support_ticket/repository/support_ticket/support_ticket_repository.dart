import 'package:thrive_mobile_app/app/model/common/common_response.dart';
import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';

abstract class SupportTicketRepository {
  Future<PaginationState> getAllPaginatedSupportTicket(
    int pageNo, {
    int? pageSize,
    Map <String, dynamic>? queryMap,
  });

  Future<CommonResponse> createSupportTicket(
    Map<String, dynamic> request,
  );
}
