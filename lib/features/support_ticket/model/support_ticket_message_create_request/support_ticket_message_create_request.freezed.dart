// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'support_ticket_message_create_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SupportTicketMessageCreateRequest _$SupportTicketMessageCreateRequestFromJson(
    Map<String, dynamic> json) {
  return _SupportTicketMessageCreateRequest.fromJson(json);
}

/// @nodoc
mixin _$SupportTicketMessageCreateRequest {
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  int? get ticketId => throw _privateConstructorUsedError;
  List<int> get fileIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupportTicketMessageCreateRequestCopyWith<SupportTicketMessageCreateRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportTicketMessageCreateRequestCopyWith<$Res> {
  factory $SupportTicketMessageCreateRequestCopyWith(
          SupportTicketMessageCreateRequest value,
          $Res Function(SupportTicketMessageCreateRequest) then) =
      _$SupportTicketMessageCreateRequestCopyWithImpl<$Res>;
  $Res call(
      {String? name,
      String? type,
      String? email,
      String? text,
      int? ticketId,
      List<int> fileIds});
}

/// @nodoc
class _$SupportTicketMessageCreateRequestCopyWithImpl<$Res>
    implements $SupportTicketMessageCreateRequestCopyWith<$Res> {
  _$SupportTicketMessageCreateRequestCopyWithImpl(this._value, this._then);

  final SupportTicketMessageCreateRequest _value;
  // ignore: unused_field
  final $Res Function(SupportTicketMessageCreateRequest) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? email = freezed,
    Object? text = freezed,
    Object? ticketId = freezed,
    Object? fileIds = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      ticketId: ticketId == freezed
          ? _value.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as int?,
      fileIds: fileIds == freezed
          ? _value.fileIds
          : fileIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
abstract class _$$_SupportTicketMessageCreateRequestCopyWith<$Res>
    implements $SupportTicketMessageCreateRequestCopyWith<$Res> {
  factory _$$_SupportTicketMessageCreateRequestCopyWith(
          _$_SupportTicketMessageCreateRequest value,
          $Res Function(_$_SupportTicketMessageCreateRequest) then) =
      __$$_SupportTicketMessageCreateRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name,
      String? type,
      String? email,
      String? text,
      int? ticketId,
      List<int> fileIds});
}

/// @nodoc
class __$$_SupportTicketMessageCreateRequestCopyWithImpl<$Res>
    extends _$SupportTicketMessageCreateRequestCopyWithImpl<$Res>
    implements _$$_SupportTicketMessageCreateRequestCopyWith<$Res> {
  __$$_SupportTicketMessageCreateRequestCopyWithImpl(
      _$_SupportTicketMessageCreateRequest _value,
      $Res Function(_$_SupportTicketMessageCreateRequest) _then)
      : super(_value, (v) => _then(v as _$_SupportTicketMessageCreateRequest));

  @override
  _$_SupportTicketMessageCreateRequest get _value =>
      super._value as _$_SupportTicketMessageCreateRequest;

  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? email = freezed,
    Object? text = freezed,
    Object? ticketId = freezed,
    Object? fileIds = freezed,
  }) {
    return _then(_$_SupportTicketMessageCreateRequest(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      ticketId: ticketId == freezed
          ? _value.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as int?,
      fileIds: fileIds == freezed
          ? _value._fileIds
          : fileIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SupportTicketMessageCreateRequest
    implements _SupportTicketMessageCreateRequest {
  const _$_SupportTicketMessageCreateRequest(
      {this.name,
      this.type,
      this.email,
      this.text,
      this.ticketId,
      final List<int> fileIds = const []})
      : _fileIds = fileIds;

  factory _$_SupportTicketMessageCreateRequest.fromJson(
          Map<String, dynamic> json) =>
      _$$_SupportTicketMessageCreateRequestFromJson(json);

  @override
  final String? name;
  @override
  final String? type;
  @override
  final String? email;
  @override
  final String? text;
  @override
  final int? ticketId;
  final List<int> _fileIds;
  @override
  @JsonKey()
  List<int> get fileIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fileIds);
  }

  @override
  String toString() {
    return 'SupportTicketMessageCreateRequest(name: $name, type: $type, email: $email, text: $text, ticketId: $ticketId, fileIds: $fileIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SupportTicketMessageCreateRequest &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.ticketId, ticketId) &&
            const DeepCollectionEquality().equals(other._fileIds, _fileIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(ticketId),
      const DeepCollectionEquality().hash(_fileIds));

  @JsonKey(ignore: true)
  @override
  _$$_SupportTicketMessageCreateRequestCopyWith<
          _$_SupportTicketMessageCreateRequest>
      get copyWith => __$$_SupportTicketMessageCreateRequestCopyWithImpl<
          _$_SupportTicketMessageCreateRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SupportTicketMessageCreateRequestToJson(this);
  }
}

abstract class _SupportTicketMessageCreateRequest
    implements SupportTicketMessageCreateRequest {
  const factory _SupportTicketMessageCreateRequest(
      {final String? name,
      final String? type,
      final String? email,
      final String? text,
      final int? ticketId,
      final List<int> fileIds}) = _$_SupportTicketMessageCreateRequest;

  factory _SupportTicketMessageCreateRequest.fromJson(
          Map<String, dynamic> json) =
      _$_SupportTicketMessageCreateRequest.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  String? get text => throw _privateConstructorUsedError;
  @override
  int? get ticketId => throw _privateConstructorUsedError;
  @override
  List<int> get fileIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SupportTicketMessageCreateRequestCopyWith<
          _$_SupportTicketMessageCreateRequest>
      get copyWith => throw _privateConstructorUsedError;
}
