import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';
import 'package:thrive_mobile_app/app/provider/core_provider.dart';
import 'package:thrive_mobile_app/app/provider/pagination_provider.dart';
import 'package:thrive_mobile_app/app/state/common/common_state.dart';
import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';
import 'package:thrive_mobile_app/features/home/repository/product_repository.dart';
import 'package:thrive_mobile_app/features/home/repository/product_repository_impl.dart';
import 'package:thrive_mobile_app/features/home/state/product_state.dart';

final productRepositoryProvider = Provider<ProductRepository>((ref) {
  return ProductRepositoryImpl(
    ref.watch(apiClientProvider),
    ref.watch(preferenceManagerProvider),
  );
});

final productStateProvider =
    StateNotifierProvider.autoDispose<ProductStateNotifier, ProductState>(
        (ref) {
  return ProductStateNotifier(ref.watch(productRepositoryProvider));
});

class ProductStateNotifier extends StateNotifier<ProductState> {
  final ProductRepository _productRepository;

  ProductStateNotifier(this._productRepository)
      : super(const ProductState.loading()) {
    getHomePageData();
  }

  Future<void> getHomePageData() async {
    state = const ProductState.loading();
    final response = await _productRepository.getHomePageData();

    if (mounted) {
      state = response;
    }
  }
}

final productPaginatedStateProvider =
    StateNotifierProvider.autoDispose<PaginationStateNotifier, PaginationState>(
        (ref) {
  return PaginationStateNotifier(
    reader: ref.read,
    fetchItems: (pageNo, {pageSize, queryMap}) {
      final repositoryProvider = ref.watch(productRepositoryProvider);
      return repositoryProvider.getAllPaginatedProducts(
        pageNo,
        pageSize: pageSize,
        queryMap: queryMap,
      );
    },
  );
});

final coverageStateNotifierProvider =
    StateNotifierProvider.autoDispose<_CoverageStateaNotifier, CommonState>(
        (ref) {
  return _CoverageStateaNotifier(ref.watch(productRepositoryProvider));
});

class _CoverageStateaNotifier extends StateNotifier<CommonState> {
  _CoverageStateaNotifier(this._productRepository)
      : super(CommonState.initial());

  final ProductRepository _productRepository;

  Future<void> getCoverageUrl(int id) async {
    state = CommonState.loading();
    final response = await _productRepository.getDefyFrontendBaseUrl();

    if (response.success == true) {
      var url = response.payload.toString();

      if (url.endsWith('/')) {
        url = url.substring(0, url.length - 1);
      }

      state = CommonState.data(
        response.copyWith(
          payload: "$url/product/$id",
        ),
      );
    } else {
      state = CommonState.error(
        response.message ?? LocaleKeys.somethingWentWrong.tr(),
      );
    }
  }
}
