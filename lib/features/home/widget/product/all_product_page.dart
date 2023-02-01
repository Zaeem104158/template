import 'package:go_router/go_router.dart';
import 'package:thrive_mobile_app/shared/utils/util.dart';
import 'package:thrive_mobile_app/app/routes/route_paths.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';
import 'package:thrive_mobile_app/app/widget/shimmer_widget.dart';
import 'package:thrive_mobile_app/app/provider/core_provider.dart';
import 'package:thrive_mobile_app/app/model/details_page_model.dart';
import 'package:thrive_mobile_app/app/state/common/common_state.dart';
import 'package:thrive_mobile_app/app/widget/text_form_field_wiget.dart';
import 'package:thrive_mobile_app/features/home/model/product/product.dart';
import 'package:thrive_mobile_app/features/home/widget/home/home_page.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';
import 'package:thrive_mobile_app/app/widget/refresh_indicator_widget.dart';
import 'package:thrive_mobile_app/features/error/paginated_error_widget.dart';

import 'package:flutter/material.dart';
import 'all_product_grid_view_widget.dart';
import '../home/home_grid_view_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/app/widget/appbar_widget.dart';
import 'package:thrive_mobile_app/features/home/provider/product_provider.dart';

class AllProductPage extends ConsumerWidget {
  AllProductPage({
    Key? key,
    this.autofocus = false,
  }) : super(key: key);

  final bool autofocus;

  void _onTextChanged(WidgetRef ref, Debouncer debouncer, String? query) {
    debouncer.call(() {
      final notifier = ref.read(productPaginatedStateProvider.notifier);

      notifier.getPaginatedData(
        fromRefresh: true,
        queryMap: {
          "name": !query.isBlank ? query : "",
        },
      );
    });
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<CommonState>(coverageStateNotifierProvider, (prev, next) {
      next.whenOrNull(
        loading: () => LocaleKeys.pleaseWait.tr().showSnackBar(context),
        error: (error) => error.showSnackBar(context),
        data: (response) => openUrl(context, response.payload),
      );
    });

    final _debouncer = ref.watch(debouncerProvider);
    final _scrollController = ref.watch(scrollControllerProvider);
    final _productState = ref.watch(productPaginatedStateProvider);
    final coverageNotifier = ref.read(coverageStateNotifierProvider.notifier);
    final _productNotifier = ref.read(productPaginatedStateProvider.notifier);
    _productNotifier.scrollListener(_scrollController);

    return Scaffold(
      appBar: AppBarWidget(
        height: 75,
        isShowNavigateIcon: false,
        titleSpacing: 0,
        titleWidget: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormFieldWidget(
                    isValidate: false,
                    autofocus: autofocus,
                    prefixIcon: Icons.search,
                    hint: LocaleKeys.search.tr(),
                    padding: const EdgeInsets.fromLTRB(0, 16, 20, 12),
                    inputDecorationBorder: const OutlineInputBorder(),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    controller: ref.watch(textEditingControllerProvider),
                    onChanged: (value) =>
                        _onTextChanged(ref, _debouncer, value),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: RefreshIndicatorWidget(
        onRefresh: () => _productNotifier.getPaginatedData(
          fromRefresh: true,
        ),
        child: _productState.isLoading
            ? ShimmerWidget(
                widget: const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: HomeGrivViewWidget(),
                ),
              )
            : _productNotifier.isErrorOccurred()
                ? PaginatedErrorWidget(
                    notifier: _productNotifier,
                    state: _productState,
                  )
                : AllProductGridViewWidget(
                    isFetchingNext: _productState.isFetchingNext,
                    products: convertToProductDatas(_productState.datas),
                    scrollController: _scrollController,
                    coveragePressed: (id) =>
                        coverageNotifier.getCoverageUrl(id),
                    onPressed: (product) {
                      final fileUrl = product.image?.fileUrl;

                      context.push(
                        routeDetails,
                        extra: DetailsPageModel(
                          widget: getProductDetailsWidget(product),
                          imageUrls: fileUrl.isBlank ? [] : [fileUrl!],
                        ),
                      );
                    },
                  ),
      ),
    );
  }
}
