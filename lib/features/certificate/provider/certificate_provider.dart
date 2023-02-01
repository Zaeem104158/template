import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/app/provider/core_provider.dart';
import 'package:thrive_mobile_app/app/provider/pagination_provider.dart';
import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';

import '../repository/certificate_repository.dart';
import '../repository/certificate_repository_impl.dart';

final certificateRepositoryProvider = Provider<CertificateRepository>((ref) {
  return CertificateRepositoryImpl(ref.watch(apiClientProvider));
});

final certificateStateProvider =
    StateNotifierProvider.autoDispose<PaginationStateNotifier, PaginationState>(
        (ref) {
  final repositoryProvider = ref.watch(certificateRepositoryProvider);

  return PaginationStateNotifier(
    reader: ref.read,
    fetchItems: (pageNo, {pageSize, queryMap}) {
      return repositoryProvider.getAllPaginatedCertificate(
        pageNo,
        pageSize: pageSize,
        queryMap: queryMap,
      );
    },
    createItem: (requestBody) {
      return repositoryProvider.createCertificate(requestBody);
    },
  );
});
