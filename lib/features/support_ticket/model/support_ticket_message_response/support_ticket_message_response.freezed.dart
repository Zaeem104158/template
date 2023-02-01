// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'support_ticket_message_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SupportTicketMessageResponse _$SupportTicketMessageResponseFromJson(
    Map<String, dynamic> json) {
  return _SupportTicketMessageResponse.fromJson(json);
}

/// @nodoc
mixin _$SupportTicketMessageResponse {
  dynamic get success => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  SupportTicketMesagePayload get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupportTicketMessageResponseCopyWith<SupportTicketMessageResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportTicketMessageResponseCopyWith<$Res> {
  factory $SupportTicketMessageResponseCopyWith(
          SupportTicketMessageResponse value,
          $Res Function(SupportTicketMessageResponse) then) =
      _$SupportTicketMessageResponseCopyWithImpl<$Res>;
  $Res call(
      {dynamic success,
      String? status,
      String? message,
      SupportTicketMesagePayload payload});

  $SupportTicketMesagePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$SupportTicketMessageResponseCopyWithImpl<$Res>
    implements $SupportTicketMessageResponseCopyWith<$Res> {
  _$SupportTicketMessageResponseCopyWithImpl(this._value, this._then);

  final SupportTicketMessageResponse _value;
  // ignore: unused_field
  final $Res Function(SupportTicketMessageResponse) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? payload = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as SupportTicketMesagePayload,
    ));
  }

  @override
  $SupportTicketMesagePayloadCopyWith<$Res> get payload {
    return $SupportTicketMesagePayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }
}

/// @nodoc
abstract class _$$_SupportTicketMessageResponseCopyWith<$Res>
    implements $SupportTicketMessageResponseCopyWith<$Res> {
  factory _$$_SupportTicketMessageResponseCopyWith(
          _$_SupportTicketMessageResponse value,
          $Res Function(_$_SupportTicketMessageResponse) then) =
      __$$_SupportTicketMessageResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic success,
      String? status,
      String? message,
      SupportTicketMesagePayload payload});

  @override
  $SupportTicketMesagePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$_SupportTicketMessageResponseCopyWithImpl<$Res>
    extends _$SupportTicketMessageResponseCopyWithImpl<$Res>
    implements _$$_SupportTicketMessageResponseCopyWith<$Res> {
  __$$_SupportTicketMessageResponseCopyWithImpl(
      _$_SupportTicketMessageResponse _value,
      $Res Function(_$_SupportTicketMessageResponse) _then)
      : super(_value, (v) => _then(v as _$_SupportTicketMessageResponse));

  @override
  _$_SupportTicketMessageResponse get _value =>
      super._value as _$_SupportTicketMessageResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? payload = freezed,
  }) {
    return _then(_$_SupportTicketMessageResponse(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as SupportTicketMesagePayload,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SupportTicketMessageResponse implements _SupportTicketMessageResponse {
  const _$_SupportTicketMessageResponse(
      {this.success, this.status, this.message, required this.payload});

  factory _$_SupportTicketMessageResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SupportTicketMessageResponseFromJson(json);

  @override
  final dynamic success;
  @override
  final String? status;
  @override
  final String? message;
  @override
  final SupportTicketMesagePayload payload;

  @override
  String toString() {
    return 'SupportTicketMessageResponse(success: $success, status: $status, message: $message, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SupportTicketMessageResponse &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.payload, payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(payload));

  @JsonKey(ignore: true)
  @override
  _$$_SupportTicketMessageResponseCopyWith<_$_SupportTicketMessageResponse>
      get copyWith => __$$_SupportTicketMessageResponseCopyWithImpl<
          _$_SupportTicketMessageResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SupportTicketMessageResponseToJson(this);
  }
}

abstract class _SupportTicketMessageResponse
    implements SupportTicketMessageResponse {
  const factory _SupportTicketMessageResponse(
          {final dynamic success,
          final String? status,
          final String? message,
          required final SupportTicketMesagePayload payload}) =
      _$_SupportTicketMessageResponse;

  factory _SupportTicketMessageResponse.fromJson(Map<String, dynamic> json) =
      _$_SupportTicketMessageResponse.fromJson;

  @override
  dynamic get success => throw _privateConstructorUsedError;
  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  SupportTicketMesagePayload get payload => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SupportTicketMessageResponseCopyWith<_$_SupportTicketMessageResponse>
      get copyWith => throw _privateConstructorUsedError;
}

SupportTicketMesagePayload _$SupportTicketMesagePayloadFromJson(
    Map<String, dynamic> json) {
  return _SupportTicketMesagePayload.fromJson(json);
}

/// @nodoc
mixin _$SupportTicketMesagePayload {
  List<SupportTicketMessage> get content => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get totalElements => throw _privateConstructorUsedError;
  int get numberOfElements => throw _privateConstructorUsedError;
  bool get last => throw _privateConstructorUsedError;
  bool get first => throw _privateConstructorUsedError;
  bool get empty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupportTicketMesagePayloadCopyWith<SupportTicketMesagePayload>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportTicketMesagePayloadCopyWith<$Res> {
  factory $SupportTicketMesagePayloadCopyWith(SupportTicketMesagePayload value,
          $Res Function(SupportTicketMesagePayload) then) =
      _$SupportTicketMesagePayloadCopyWithImpl<$Res>;
  $Res call(
      {List<SupportTicketMessage> content,
      int totalPages,
      int totalElements,
      int numberOfElements,
      bool last,
      bool first,
      bool empty});
}

/// @nodoc
class _$SupportTicketMesagePayloadCopyWithImpl<$Res>
    implements $SupportTicketMesagePayloadCopyWith<$Res> {
  _$SupportTicketMesagePayloadCopyWithImpl(this._value, this._then);

  final SupportTicketMesagePayload _value;
  // ignore: unused_field
  final $Res Function(SupportTicketMesagePayload) _then;

  @override
  $Res call({
    Object? content = freezed,
    Object? totalPages = freezed,
    Object? totalElements = freezed,
    Object? numberOfElements = freezed,
    Object? last = freezed,
    Object? first = freezed,
    Object? empty = freezed,
  }) {
    return _then(_value.copyWith(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<SupportTicketMessage>,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalElements: totalElements == freezed
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfElements: numberOfElements == freezed
          ? _value.numberOfElements
          : numberOfElements // ignore: cast_nullable_to_non_nullable
              as int,
      last: last == freezed
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as bool,
      first: first == freezed
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as bool,
      empty: empty == freezed
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_SupportTicketMesagePayloadCopyWith<$Res>
    implements $SupportTicketMesagePayloadCopyWith<$Res> {
  factory _$$_SupportTicketMesagePayloadCopyWith(
          _$_SupportTicketMesagePayload value,
          $Res Function(_$_SupportTicketMesagePayload) then) =
      __$$_SupportTicketMesagePayloadCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<SupportTicketMessage> content,
      int totalPages,
      int totalElements,
      int numberOfElements,
      bool last,
      bool first,
      bool empty});
}

/// @nodoc
class __$$_SupportTicketMesagePayloadCopyWithImpl<$Res>
    extends _$SupportTicketMesagePayloadCopyWithImpl<$Res>
    implements _$$_SupportTicketMesagePayloadCopyWith<$Res> {
  __$$_SupportTicketMesagePayloadCopyWithImpl(
      _$_SupportTicketMesagePayload _value,
      $Res Function(_$_SupportTicketMesagePayload) _then)
      : super(_value, (v) => _then(v as _$_SupportTicketMesagePayload));

  @override
  _$_SupportTicketMesagePayload get _value =>
      super._value as _$_SupportTicketMesagePayload;

  @override
  $Res call({
    Object? content = freezed,
    Object? totalPages = freezed,
    Object? totalElements = freezed,
    Object? numberOfElements = freezed,
    Object? last = freezed,
    Object? first = freezed,
    Object? empty = freezed,
  }) {
    return _then(_$_SupportTicketMesagePayload(
      content: content == freezed
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<SupportTicketMessage>,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalElements: totalElements == freezed
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfElements: numberOfElements == freezed
          ? _value.numberOfElements
          : numberOfElements // ignore: cast_nullable_to_non_nullable
              as int,
      last: last == freezed
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as bool,
      first: first == freezed
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as bool,
      empty: empty == freezed
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SupportTicketMesagePayload implements _SupportTicketMesagePayload {
  const _$_SupportTicketMesagePayload(
      {final List<SupportTicketMessage> content = const [],
      required this.totalPages,
      required this.totalElements,
      required this.numberOfElements,
      required this.last,
      required this.first,
      required this.empty})
      : _content = content;

  factory _$_SupportTicketMesagePayload.fromJson(Map<String, dynamic> json) =>
      _$$_SupportTicketMesagePayloadFromJson(json);

  final List<SupportTicketMessage> _content;
  @override
  @JsonKey()
  List<SupportTicketMessage> get content {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  final int totalPages;
  @override
  final int totalElements;
  @override
  final int numberOfElements;
  @override
  final bool last;
  @override
  final bool first;
  @override
  final bool empty;

  @override
  String toString() {
    return 'SupportTicketMesagePayload(content: $content, totalPages: $totalPages, totalElements: $totalElements, numberOfElements: $numberOfElements, last: $last, first: $first, empty: $empty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SupportTicketMesagePayload &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            const DeepCollectionEquality()
                .equals(other.totalPages, totalPages) &&
            const DeepCollectionEquality()
                .equals(other.totalElements, totalElements) &&
            const DeepCollectionEquality()
                .equals(other.numberOfElements, numberOfElements) &&
            const DeepCollectionEquality().equals(other.last, last) &&
            const DeepCollectionEquality().equals(other.first, first) &&
            const DeepCollectionEquality().equals(other.empty, empty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_content),
      const DeepCollectionEquality().hash(totalPages),
      const DeepCollectionEquality().hash(totalElements),
      const DeepCollectionEquality().hash(numberOfElements),
      const DeepCollectionEquality().hash(last),
      const DeepCollectionEquality().hash(first),
      const DeepCollectionEquality().hash(empty));

  @JsonKey(ignore: true)
  @override
  _$$_SupportTicketMesagePayloadCopyWith<_$_SupportTicketMesagePayload>
      get copyWith => __$$_SupportTicketMesagePayloadCopyWithImpl<
          _$_SupportTicketMesagePayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SupportTicketMesagePayloadToJson(this);
  }
}

abstract class _SupportTicketMesagePayload
    implements SupportTicketMesagePayload {
  const factory _SupportTicketMesagePayload(
      {final List<SupportTicketMessage> content,
      required final int totalPages,
      required final int totalElements,
      required final int numberOfElements,
      required final bool last,
      required final bool first,
      required final bool empty}) = _$_SupportTicketMesagePayload;

  factory _SupportTicketMesagePayload.fromJson(Map<String, dynamic> json) =
      _$_SupportTicketMesagePayload.fromJson;

  @override
  List<SupportTicketMessage> get content => throw _privateConstructorUsedError;
  @override
  int get totalPages => throw _privateConstructorUsedError;
  @override
  int get totalElements => throw _privateConstructorUsedError;
  @override
  int get numberOfElements => throw _privateConstructorUsedError;
  @override
  bool get last => throw _privateConstructorUsedError;
  @override
  bool get first => throw _privateConstructorUsedError;
  @override
  bool get empty => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SupportTicketMesagePayloadCopyWith<_$_SupportTicketMesagePayload>
      get copyWith => throw _privateConstructorUsedError;
}
