import 'package:flutter/material.dart';
import '../product/product_widget.dart';
import 'package:thrive_mobile_app/app/values/app_fonts.dart';
import 'package:thrive_mobile_app/app/values/size_config.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';
import 'package:thrive_mobile_app/features/home/model/product/product.dart';

class HomeGrivViewWidget extends StatelessWidget {
  const HomeGrivViewWidget({
    Key? key,
    this.products,
    this.onPressed,
    this.maxLines = 2,
    this.maxViewLength = 4,
    this.shimmerCount = 12,
    this.coveragePressed,
    this.textOverflow = TextOverflow.ellipsis,
  }) : super(key: key);

  final int? maxLines;
  final int shimmerCount;
  final int maxViewLength;
  final List<Product>? products;
  final TextOverflow? textOverflow;
  final Function(int)? coveragePressed;
  final Function(Product product)? onPressed;

  @override
  Widget build(BuildContext context) {
    int length = shimmerCount;
    if (!products.isBlank) {
      length =
          products!.length > maxViewLength ? maxViewLength : products!.length;
    }

    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.only(
        left: 12,
        right: 12,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: !products.isBlank ? 208 : 170,
        crossAxisCount: SizeConfig.isLandscapeMode(context) ? 3 : 2,
      ),
      itemCount: length,
      itemBuilder: (context, index) {
        Product? product;
        String? fileUrl;

        if (!products.isBlank) {
          product = products![index];

          final iconUrl = product.icon?.fileUrl;
          final imageUrl = product.image?.fileUrl;
          fileUrl = !imageUrl.isBlank ? imageUrl : iconUrl;
        }

        return product != null
            ? ProductWidget(
                maxLines: maxLines,
                name: product.name,
                imageUrl: fileUrl,
                textSize: smallFontSize,
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
    );
  }
}
