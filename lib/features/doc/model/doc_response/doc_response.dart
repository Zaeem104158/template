import 'package:freezed_annotation/freezed_annotation.dart';
import '../doc/doc.dart';

part 'doc_response.freezed.dart';
part 'doc_response.g.dart';

@freezed
class DocResponse with _$DocResponse {
  const factory DocResponse({
    dynamic success,
    final String? status,
    final String? message,
    required final DocPayload payload,
  }) = _DocResponse;

  factory DocResponse.fromJson(Map<String, dynamic> json) =>
      _$DocResponseFromJson(json);
}

@freezed
class DocPayload with _$DocPayload {
  const factory DocPayload({
    @Default([]) List<Doc> content,
    required final int totalPages,
    required final int totalElements,
    required final int numberOfElements,
    required final bool last,
    required final bool first,
    required final bool empty,
  }) = _DocPayload;

  factory DocPayload.fromJson(Map<String, dynamic> json) =>
      _$DocPayloadFromJson(json);
}