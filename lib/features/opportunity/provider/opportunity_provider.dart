import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/app/provider/core_provider.dart';
import 'package:thrive_mobile_app/app/provider/pagination_provider.dart';
import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';
import 'package:thrive_mobile_app/features/opportunity/repository/opportunity_repository.dart';
import 'package:thrive_mobile_app/features/opportunity/repository/opportunity_repository_impl.dart';

final opportunityRepositoryProvider = Provider<OpportunityRepository>((ref) {
  return OpportunityRepositoryImpl(
    ref.watch(apiClientProvider),
    ref.watch(preferenceManagerProvider),
  );
});

final opportunityPaginatedStateProvider =
    StateNotifierProvider.autoDispose<PaginationStateNotifier, PaginationState>(
        (ref) {
  final repositoryProvider = ref.watch(opportunityRepositoryProvider);

  return PaginationStateNotifier(
    reader: ref.read,
    fetchItems: (pageNo, {pageSize, queryMap}) {
      return repositoryProvider.getAllPaginatedOpportunities(
        pageNo,
        pageSize: pageSize,
        queryMap: queryMap,
      );
    },
  );
});
