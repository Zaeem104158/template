import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/app/provider/core_provider.dart';
import 'package:thrive_mobile_app/app/provider/pagination_provider.dart';
import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';
import 'package:thrive_mobile_app/features/support_ticket/repository/support_ticket_message/support_ticket_message_repository.dart';
import 'package:thrive_mobile_app/features/support_ticket/repository/support_ticket_message/support_ticket_message_repository_impl.dart';

final supportTicketMessageRepositoryProvider =
    Provider<SupportTicketMessageRepository>((ref) {
  return SupportTicketMessageRepositoryImpl(
    ref.watch(apiClientProvider),
    ref.watch(preferenceManagerProvider),
    ref.watch(commonRepositoryProvider),
  );
});

final supportTicketMessageStateProvider = StateNotifierProvider.autoDispose
    .family<PaginationStateNotifier, PaginationState, int>((ref, ticketId) {
  final repositoryProvider = ref.watch(supportTicketMessageRepositoryProvider);

  return PaginationStateNotifier(
    reader: ref.read,
    fetchItems: (pageNo, {pageSize, queryMap}) {
      queryMap ??= {};
      queryMap["ticketId"] = ticketId;

      return repositoryProvider.getAllPaginatedSupportTicketMessage(
        pageNo,
        pageSize: 20,
        queryMap: queryMap,
      );
    },
    createItem: (requestBody) {
      return repositoryProvider.createSupportTicketMessage(requestBody);
    },
  );
});

final supportTicketMessageAttachmentPathProvider =
    StateProvider.autoDispose<String?>((ref) {
  return null;
});
