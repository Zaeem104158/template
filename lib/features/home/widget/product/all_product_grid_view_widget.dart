import 'package:flutter/material.dart';
import 'package:thrive_mobile_app/app/values/size_config.dart';
import 'package:thrive_mobile_app/app/widget/circular_progress_widget.dart';

import 'product_widget.dart';
import '../../../../shared/utils/extensions.dart';
import 'package:thrive_mobile_app/features/home/model/product/product.dart';

class AllProductGridViewWidget extends StatelessWidget {
  const AllProductGridViewWidget({
    Key? key,
    this.onPressed,
    this.products,
    this.maxLines = 2,
    this.coveragePressed,
    this.scrollController,
    this.shimmerCount = 12,
    this.isFetchingNext = false,
    this.textOverflow = TextOverflow.ellipsis,
  }) : super(key: key);

  final int? maxLines;
  final int shimmerCount;
  final bool isFetchingNext;
  final List<Product>? products;
  final TextOverflow? textOverflow;
  final Function(int)? coveragePressed;
  final ScrollController? scrollController;
  final Function(Product product)? onPressed;

  @override
  Widget build(BuildContext context) {
    int length = shimmerCount;
    if (!products.isBlank) {
      length = products!.length;
    }

    return Column(
      children: [
        Expanded(
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: length,
            padding: const EdgeInsets.all(12),
            controller: scrollController,
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 208,
              crossAxisCount: SizeConfig.isLandscapeMode(context) ? 3 : 2,
            ),
            itemBuilder: (context, index) {
              Product? product;
              String? fileUrl;

              if (!products.isBlank) {
                product = products![index];

                final imageUrl = product.image?.fileUrl;
                final iconUrl = product.icon?.fileUrl;
                fileUrl = !imageUrl.isBlank ? imageUrl : iconUrl;
              }

              return product != null
                  ? ProductWidget(
                      maxLines: maxLines,
                      name: product.name,
                      imageUrl: fileUrl,
                      textOverflow: TextOverflow.ellipsis,
                      onPressed: () => onPressed != null && product != null
                          ? onPressed!(product)
                          : null,
                      coveragePressed: () =>
                          coveragePressed != null && product != null
                              ? coveragePressed!(product.id)
                              : null,
                    )
                  : const ProductWidget();
            },
          ),
        ),
        if (isFetchingNext) ...[
          const CircularProgressWidget(),
        ],
      ],
    );
  }
}
