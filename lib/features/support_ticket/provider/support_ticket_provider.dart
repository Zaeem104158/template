import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/app/provider/core_provider.dart';
import 'package:thrive_mobile_app/app/provider/pagination_provider.dart';
import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';
import 'package:thrive_mobile_app/features/support_ticket/repository/support_ticket/support_ticket_repository.dart';
import 'package:thrive_mobile_app/features/support_ticket/repository/support_ticket/support_ticket_repository_impl.dart';

final supportTicketRepositoryProvider =
    Provider<SupportTicketRepository>((ref) {
  return SupportTicketRepositoryImpl(
    ref.watch(apiClientProvider),
    ref.watch(preferenceManagerProvider),
  );
});

final supportTicketStateProvider =
    StateNotifierProvider.autoDispose<PaginationStateNotifier, PaginationState>(
        (ref) {
  final repositoryProvider = ref.watch(supportTicketRepositoryProvider);

  return PaginationStateNotifier(
    reader: ref.read,
    fetchItems: (pageNo, {pageSize, queryMap}) {
      return repositoryProvider.getAllPaginatedSupportTicket(
        pageNo,
        pageSize: pageSize,
        queryMap: queryMap,
      );
    },
    createItem: (requestBody) {
      return repositoryProvider.createSupportTicket(requestBody);
    },
  );
});

final supportTicketStatusProvider = StateProvider.autoDispose<int>((ref) {
  return 0;
});
