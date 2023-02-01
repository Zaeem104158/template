import '../../../app/provider/core_provider.dart';
import '../repository/policy_repository.dart';
import '../repository/policy_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/app/provider/pagination_provider.dart';
import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';

final policyRepositoryProvider = Provider<PolicyRepository>((ref) {
  return PolicyRepositoryImpl(ref.watch(apiClientProvider));
});

final policyStateProvider =
    StateNotifierProvider.autoDispose<PaginationStateNotifier, PaginationState>(
        (ref) {
  final repositoryProvider = ref.watch(policyRepositoryProvider);

  return PaginationStateNotifier(
    reader: ref.read,
    fetchItems: (pageNo, {pageSize, queryMap}) {
      return repositoryProvider.getAllPaginatedPolicy(
        pageNo,
        pageSize: pageSize,
        queryMap: queryMap,
      );
    },
  );
});
