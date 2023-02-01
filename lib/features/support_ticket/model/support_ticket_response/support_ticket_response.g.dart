// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_ticket_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SupportTicketResponse _$$_SupportTicketResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SupportTicketResponse(
      success: json['success'],
      status: json['status'] as String?,
      message: json['message'] as String?,
      isLoading: json['isLoading'] as bool? ?? false,
      isImageUploading: json['isImageUploading'] as bool? ?? false,
      payload: SupportTicketPayload.fromJson(
          json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SupportTicketResponseToJson(
        _$_SupportTicketResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status': instance.status,
      'message': instance.message,
      'isLoading': instance.isLoading,
      'isImageUploading': instance.isImageUploading,
      'payload': instance.payload,
    };

_$_SupportTicketPayload _$$_SupportTicketPayloadFromJson(
        Map<String, dynamic> json) =>
    _$_SupportTicketPayload(
      content: (json['content'] as List<dynamic>?)
              ?.map((e) => SupportTicket.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalPages: json['totalPages'] as int,
      totalElements: json['totalElements'] as int,
      numberOfElements: json['numberOfElements'] as int,
      last: json['last'] as bool,
      first: json['first'] as bool,
      empty: json['empty'] as bool,
    );

Map<String, dynamic> _$$_SupportTicketPayloadToJson(
        _$_SupportTicketPayload instance) =>
    <String, dynamic>{
      'content': instance.content,
      'totalPages': instance.totalPages,
      'totalElements': instance.totalElements,
      'numberOfElements': instance.numberOfElements,
      'last': instance.last,
      'first': instance.first,
      'empty': instance.empty,
    };
