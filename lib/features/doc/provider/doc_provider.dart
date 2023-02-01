import 'package:thrive_mobile_app/app/values/app_types.dart';
import 'package:thrive_mobile_app/features/doc/repository/doc_repository.dart';
import 'package:thrive_mobile_app/features/doc/repository/doc_repository_impl.dart';

import '../../../app/provider/core_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/app/provider/pagination_provider.dart';
import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';

final docRepositoryProvider = Provider<DocRepository>((ref) {
  return DocRepositoryImpl(
    ref.watch(apiClientProvider),
    ref.watch(commonRepositoryProvider),
    ref.watch(preferenceManagerProvider),
  );
});

final docStateProvider = StateNotifierProvider.autoDispose
    .family<PaginationStateNotifier, PaginationState, DocType>((ref, docType) {
  final repositoryProvider = ref.watch(docRepositoryProvider);

  return PaginationStateNotifier(
    reader: ref.read,
    fetchItems: (pageNo, {pageSize, queryMap}) {
      return repositoryProvider.getAllPaginatedDoc(
        pageNo,
        docType,
        pageSize: pageSize,
        queryMap: queryMap,
      );
    },
    createItem: (requestBody) {
      return repositoryProvider.createDoc(
        docType,
        requestBody,
      );
    },
    deleteItem: (id, index) {
      return repositoryProvider.deleteDoc(id);
    },
  );
});

final docPathProvider = StateProvider.autoDispose<String?>((ref) {
  return null;
});
