import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thrive_mobile_app/app/model/user/user.dart';
import 'package:thrive_mobile_app/features/carrier/model/carrier/carrier.dart';
import 'package:thrive_mobile_app/features/opportunity/model/contact/contact.dart';

part 'quote.freezed.dart';
part 'quote.g.dart';

@freezed
class Quote with _$Quote {
  const factory Quote({
    required final int id,
    final Contact? contact,
    final Carrier? carrier,
    final User? assignedAgent,
    final String? creationDate,
    @Default(0) final double effectiveDate,
    @Default("") final String quoteStatus,
    @Default(0) double premiumAmount,
    @Default(0) double creationDateTimeStamp,
  }) = _Quote;

  factory Quote.fromJson(Map<String, dynamic> json) => _$QuoteFromJson(json);
}

List<Quote> convertToQuoteData(List<dynamic> datas) {
  return datas.map((e) => e as Quote).toList();
}
