// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'quote_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuoteResponse _$QuoteResponseFromJson(Map<String, dynamic> json) {
  return _QuoteResponse.fromJson(json);
}

/// @nodoc
mixin _$QuoteResponse {
  dynamic get success => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  QuotePayload get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuoteResponseCopyWith<QuoteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuoteResponseCopyWith<$Res> {
  factory $QuoteResponseCopyWith(
          QuoteResponse value, $Res Function(QuoteResponse) then) =
      _$QuoteResponseCopyWithImpl<$Res>;
  $Res call(
      {dynamic success, String? status, String? message, QuotePayload payload});

  $QuotePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$QuoteResponseCopyWithImpl<$Res>
    implements $QuoteResponseCopyWith<$Res> {
  _$QuoteResponseCopyWithImpl(this._value, this._then);

  final QuoteResponse _value;
  // ignore: unused_field
  final $Res Function(QuoteResponse) _then;

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
              as QuotePayload,
    ));
  }

  @override
  $QuotePayloadCopyWith<$Res> get payload {
    return $QuotePayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }
}

/// @nodoc
abstract class _$$_QuoteResponseCopyWith<$Res>
    implements $QuoteResponseCopyWith<$Res> {
  factory _$$_QuoteResponseCopyWith(
          _$_QuoteResponse value, $Res Function(_$_QuoteResponse) then) =
      __$$_QuoteResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic success, String? status, String? message, QuotePayload payload});

  @override
  $QuotePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$_QuoteResponseCopyWithImpl<$Res>
    extends _$QuoteResponseCopyWithImpl<$Res>
    implements _$$_QuoteResponseCopyWith<$Res> {
  __$$_QuoteResponseCopyWithImpl(
      _$_QuoteResponse _value, $Res Function(_$_QuoteResponse) _then)
      : super(_value, (v) => _then(v as _$_QuoteResponse));

  @override
  _$_QuoteResponse get _value => super._value as _$_QuoteResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? payload = freezed,
  }) {
    return _then(_$_QuoteResponse(
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
              as QuotePayload,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuoteResponse implements _QuoteResponse {
  const _$_QuoteResponse(
      {this.success, this.status, this.message, required this.payload});

  factory _$_QuoteResponse.fromJson(Map<String, dynamic> json) =>
      _$$_QuoteResponseFromJson(json);

  @override
  final dynamic success;
  @override
  final String? status;
  @override
  final String? message;
  @override
  final QuotePayload payload;

  @override
  String toString() {
    return 'QuoteResponse(success: $success, status: $status, message: $message, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuoteResponse &&
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
  _$$_QuoteResponseCopyWith<_$_QuoteResponse> get copyWith =>
      __$$_QuoteResponseCopyWithImpl<_$_QuoteResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuoteResponseToJson(this);
  }
}

abstract class _QuoteResponse implements QuoteResponse {
  const factory _QuoteResponse(
      {final dynamic success,
      final String? status,
      final String? message,
      required final QuotePayload payload}) = _$_QuoteResponse;

  factory _QuoteResponse.fromJson(Map<String, dynamic> json) =
      _$_QuoteResponse.fromJson;

  @override
  dynamic get success => throw _privateConstructorUsedError;
  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  QuotePayload get payload => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_QuoteResponseCopyWith<_$_QuoteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

QuotePayload _$QuotePayloadFromJson(Map<String, dynamic> json) {
  return _QuotePayload.fromJson(json);
}

/// @nodoc
mixin _$QuotePayload {
  List<Quote> get content => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get totalElements => throw _privateConstructorUsedError;
  int get numberOfElements => throw _privateConstructorUsedError;
  bool get last => throw _privateConstructorUsedError;
  bool get first => throw _privateConstructorUsedError;
  bool get empty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuotePayloadCopyWith<QuotePayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuotePayloadCopyWith<$Res> {
  factory $QuotePayloadCopyWith(
          QuotePayload value, $Res Function(QuotePayload) then) =
      _$QuotePayloadCopyWithImpl<$Res>;
  $Res call(
      {List<Quote> content,
      int totalPages,
      int totalElements,
      int numberOfElements,
      bool last,
      bool first,
      bool empty});
}

/// @nodoc
class _$QuotePayloadCopyWithImpl<$Res> implements $QuotePayloadCopyWith<$Res> {
  _$QuotePayloadCopyWithImpl(this._value, this._then);

  final QuotePayload _value;
  // ignore: unused_field
  final $Res Function(QuotePayload) _then;

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
              as List<Quote>,
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
abstract class _$$_QuotePayloadCopyWith<$Res>
    implements $QuotePayloadCopyWith<$Res> {
  factory _$$_QuotePayloadCopyWith(
          _$_QuotePayload value, $Res Function(_$_QuotePayload) then) =
      __$$_QuotePayloadCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Quote> content,
      int totalPages,
      int totalElements,
      int numberOfElements,
      bool last,
      bool first,
      bool empty});
}

/// @nodoc
class __$$_QuotePayloadCopyWithImpl<$Res>
    extends _$QuotePayloadCopyWithImpl<$Res>
    implements _$$_QuotePayloadCopyWith<$Res> {
  __$$_QuotePayloadCopyWithImpl(
      _$_QuotePayload _value, $Res Function(_$_QuotePayload) _then)
      : super(_value, (v) => _then(v as _$_QuotePayload));

  @override
  _$_QuotePayload get _value => super._value as _$_QuotePayload;

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
    return _then(_$_QuotePayload(
      content: content == freezed
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<Quote>,
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
class _$_QuotePayload implements _QuotePayload {
  const _$_QuotePayload(
      {final List<Quote> content = const [],
      required this.totalPages,
      required this.totalElements,
      required this.numberOfElements,
      required this.last,
      required this.first,
      required this.empty})
      : _content = content;

  factory _$_QuotePayload.fromJson(Map<String, dynamic> json) =>
      _$$_QuotePayloadFromJson(json);

  final List<Quote> _content;
  @override
  @JsonKey()
  List<Quote> get content {
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
    return 'QuotePayload(content: $content, totalPages: $totalPages, totalElements: $totalElements, numberOfElements: $numberOfElements, last: $last, first: $first, empty: $empty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuotePayload &&
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
  _$$_QuotePayloadCopyWith<_$_QuotePayload> get copyWith =>
      __$$_QuotePayloadCopyWithImpl<_$_QuotePayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuotePayloadToJson(this);
  }
}

abstract class _QuotePayload implements QuotePayload {
  const factory _QuotePayload(
      {final List<Quote> content,
      required final int totalPages,
      required final int totalElements,
      required final int numberOfElements,
      required final bool last,
      required final bool first,
      required final bool empty}) = _$_QuotePayload;

  factory _QuotePayload.fromJson(Map<String, dynamic> json) =
      _$_QuotePayload.fromJson;

  @override
  List<Quote> get content => throw _privateConstructorUsedError;
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
  _$$_QuotePayloadCopyWith<_$_QuotePayload> get copyWith =>
      throw _privateConstructorUsedError;
}
