import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../app/provider/core_provider.dart';
import '../../../app/provider/pagination_provider.dart';
import '../../../app/state/pagination/pagination_state.dart';
import '../../../features/notification/repository/notification_repository.dart';
import '../../../features/notification/repository/notification_repository_impl.dart';

final notificationRepositoryProvider = Provider<NotificationRepository>((ref) {
  return NotificationRepositoryImpl(ref.watch(apiClientProvider));
});

final unreadCounterProvider = FutureProvider<int>((ref) async {
  final _loggedInUserSate = ref.watch(loggedInUserSateProvider);

  if (_loggedInUserSate != null) {
    final _notificationRepository = ref.watch(notificationRepositoryProvider);
    return await _notificationRepository.getUnreadCount();
  }

  return 0;
});

final markAsReadProvider = FutureProvider.autoDispose<void>((ref) async {
  final _notificationRepository = ref.watch(notificationRepositoryProvider);
  final response = await _notificationRepository.markAsRead();

  response.whenOrNull(
    data: (data) => ref.refresh(unreadCounterProvider),
    error: (error) => ref.refresh(unreadCounterProvider),
  );
});

final notificationStateProvider =
    StateNotifierProvider.autoDispose<PaginationStateNotifier, PaginationState>(
        (ref) {
  return PaginationStateNotifier(
    reader: ref.read,
    fetchItems: (pageNo, {pageSize, queryMap}) {
      final repositoryProvider = ref.watch(notificationRepositoryProvider);
      return repositoryProvider.getAllPaginatedData(
        pageNo,
        pageSize: 20,
      );
    },
  );
});
