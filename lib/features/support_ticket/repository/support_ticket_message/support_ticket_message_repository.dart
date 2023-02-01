import 'package:thrive_mobile_app/app/model/common/common_response.dart';
import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';

abstract class SupportTicketMessageRepository {
  Future<PaginationState> getAllPaginatedSupportTicketMessage(
    int pageNo, {
    int? pageSize,
    Map<String, dynamic>? queryMap,
  });

  Future<CommonResponse> createSupportTicketMessage(
    Map<String, dynamic> request,
  );
}
