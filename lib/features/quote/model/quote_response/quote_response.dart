import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thrive_mobile_app/features/quote/model/quote/quote.dart';

part 'quote_response.g.dart';
part 'quote_response.freezed.dart';

@freezed
class QuoteResponse with _$QuoteResponse {
  const factory QuoteResponse({
    dynamic success,
    final String? status,
    final String? message,
    required final QuotePayload payload,
  }) = _QuoteResponse;

  factory QuoteResponse.fromJson(Map<String, dynamic> json) =>
   _$QuoteResponseFromJson(json);
}

@freezed
class QuotePayload with _$QuotePayload {
  const factory QuotePayload({
    @Default([]) List<Quote> content,
    required final int totalPages,
    required final int totalElements,
    required final int numberOfElements,
    required final bool last,
    required final bool first,
    required final bool empty,
  }) = _QuotePayload;

  factory QuotePayload.fromJson(Map<String, dynamic> json) =>
      _$QuotePayloadFromJson(json);
}
