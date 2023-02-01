import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thrive_mobile_app/app/model/db_file/db_file.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required final int id,
    final String? creationDate,
    @Default("") final String name,
    final String? tag,
    final String? longDescription,
    final String? shortDescription,
    final DbFile? image,
    final DbFile? icon,
    final bool? active,
    @Default(0) final double creationDateTimeStamp,
    @Default(false) bool isRecommended,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

List<Product> convertToProductDatas(List<dynamic> datas) {
  return datas.map((e) => e as Product).toList();
}
