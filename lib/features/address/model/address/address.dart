import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address {
  const factory Address({
    required final int id,
    final String? city,
    final String? state,
    final String? street,
    final String? zipCode,
    final String? addressType,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}

List<Address> convertToAddressDatas(List<dynamic> datas) {
  return datas.map((e) => e as Address).toList();
}
