import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/app/provider/core_provider.dart';
import 'package:thrive_mobile_app/app/provider/pagination_provider.dart';
import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';
import 'package:thrive_mobile_app/features/quote/repository/quote_repository.dart';
import 'package:thrive_mobile_app/features/quote/repository/quote_repository_impl.dart';

final quoteRepositoryProvider = Provider<QuoteRepository>((ref) {
  return QuoteRepositoryImpl(ref.watch(apiClientProvider));
});

final quotePaginatedStateProvider =
    StateNotifierProvider.autoDispose<PaginationStateNotifier, PaginationState>(
        (ref) {
  final repositoryProvider = ref.watch(quoteRepositoryProvider);

  return PaginationStateNotifier(
    reader: ref.read,
    fetchItems: (pageNo, {pageSize, queryMap}) {
      return repositoryProvider.getAllPaginatedQuotes(
        pageNo,
        pageSize: pageSize,
        queryMap: queryMap,
      );
    },
  );
});
