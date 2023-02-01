import '../../../app/state/common/common_state.dart';
import '../../../app/state/pagination/pagination_state.dart';

abstract class NotificationRepository {
  Future<int> getUnreadCount();
  Future<CommonState> markAsRead();

  Future<PaginationState> getAllPaginatedData(
    int pageNo, {
    int? pageSize,
  });
}
