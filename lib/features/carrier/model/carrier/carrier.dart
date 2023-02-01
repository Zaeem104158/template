import 'package:freezed_annotation/freezed_annotation.dart';

part 'carrier.freezed.dart';
part 'carrier.g.dart';

@freezed
class Carrier with _$Carrier {
  const factory Carrier({
    required final int id,
    final String? name,
    final String? websiteUrl,
    @Default(0) final double creationDateTimeStamp,
  }) = _Carrier;

  factory Carrier.fromJson(Map<String, dynamic> json) =>
      _$CarrierFromJson(json);
}

List<Carrier> convertToCarrierData(List<dynamic> datas) {
  return datas.map((e) => e as Carrier).toList();
}
