import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/app/provider/core_provider.dart';
import 'package:thrive_mobile_app/app/provider/pagination_provider.dart';
import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';
import 'package:thrive_mobile_app/app/values/app_types.dart';
import 'package:thrive_mobile_app/features/claim/repository/claim_repository.dart';
import 'package:thrive_mobile_app/features/claim/repository/claim_repository_impl.dart';

final claimRepositoryProvider = Provider<ClaimRepository>((ref) {
  return ClaimRepositoryImpl(
    ref.watch(apiClientProvider),
    ref.watch(commonRepositoryProvider),
    ref.watch(preferenceManagerProvider),
  );
});

final claimStateProvider =
    StateNotifierProvider.autoDispose<PaginationStateNotifier, PaginationState>((ref) {
    final repositoryProvider = ref.watch(claimRepositoryProvider);

  return PaginationStateNotifier(
    reader: ref.read,
    fetchItems: (pageNo, {pageSize, queryMap}) {
      return repositoryProvider.getAllPaginatedClaim(
        pageNo,
        pageSize: pageSize,
        queryMap: queryMap,
      );
    },
    createItem: (requestBody) {
      return repositoryProvider.createClaim(requestBody);
    },
  );
});

final claimSearchTypeProvider = StateProvider.autoDispose<ClaimSortType>((ref) {
  return ClaimSortType.Product;
});

final claimAttachmentPathProvider = StateProvider.autoDispose<String?>((ref) {
  return null;
});
