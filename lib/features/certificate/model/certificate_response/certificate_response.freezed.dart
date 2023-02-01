// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'certificate_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CertificateResponse _$CertificateResponseFromJson(Map<String, dynamic> json) {
  return _CertificateResponse.fromJson(json);
}

/// @nodoc
mixin _$CertificateResponse {
  dynamic get success => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  CertificatePayload get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CertificateResponseCopyWith<CertificateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CertificateResponseCopyWith<$Res> {
  factory $CertificateResponseCopyWith(
          CertificateResponse value, $Res Function(CertificateResponse) then) =
      _$CertificateResponseCopyWithImpl<$Res>;
  $Res call(
      {dynamic success,
      String? status,
      String? message,
      CertificatePayload payload});

  $CertificatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$CertificateResponseCopyWithImpl<$Res>
    implements $CertificateResponseCopyWith<$Res> {
  _$CertificateResponseCopyWithImpl(this._value, this._then);

  final CertificateResponse _value;
  // ignore: unused_field
  final $Res Function(CertificateResponse) _then;

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
              as CertificatePayload,
    ));
  }

  @override
  $CertificatePayloadCopyWith<$Res> get payload {
    return $CertificatePayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }
}

/// @nodoc
abstract class _$$_CertificateResponseCopyWith<$Res>
    implements $CertificateResponseCopyWith<$Res> {
  factory _$$_CertificateResponseCopyWith(_$_CertificateResponse value,
          $Res Function(_$_CertificateResponse) then) =
      __$$_CertificateResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic success,
      String? status,
      String? message,
      CertificatePayload payload});

  @override
  $CertificatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$_CertificateResponseCopyWithImpl<$Res>
    extends _$CertificateResponseCopyWithImpl<$Res>
    implements _$$_CertificateResponseCopyWith<$Res> {
  __$$_CertificateResponseCopyWithImpl(_$_CertificateResponse _value,
      $Res Function(_$_CertificateResponse) _then)
      : super(_value, (v) => _then(v as _$_CertificateResponse));

  @override
  _$_CertificateResponse get _value => super._value as _$_CertificateResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? payload = freezed,
  }) {
    return _then(_$_CertificateResponse(
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
              as CertificatePayload,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CertificateResponse implements _CertificateResponse {
  const _$_CertificateResponse(
      {this.success, this.status, this.message, required this.payload});

  factory _$_CertificateResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CertificateResponseFromJson(json);

  @override
  final dynamic success;
  @override
  final String? status;
  @override
  final String? message;
  @override
  final CertificatePayload payload;

  @override
  String toString() {
    return 'CertificateResponse(success: $success, status: $status, message: $message, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CertificateResponse &&
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
  _$$_CertificateResponseCopyWith<_$_CertificateResponse> get copyWith =>
      __$$_CertificateResponseCopyWithImpl<_$_CertificateResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CertificateResponseToJson(this);
  }
}

abstract class _CertificateResponse implements CertificateResponse {
  const factory _CertificateResponse(
      {final dynamic success,
      final String? status,
      final String? message,
      required final CertificatePayload payload}) = _$_CertificateResponse;

  factory _CertificateResponse.fromJson(Map<String, dynamic> json) =
      _$_CertificateResponse.fromJson;

  @override
  dynamic get success => throw _privateConstructorUsedError;
  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  CertificatePayload get payload => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CertificateResponseCopyWith<_$_CertificateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

CertificatePayload _$CertificatePayloadFromJson(Map<String, dynamic> json) {
  return _CertificatePayload.fromJson(json);
}

/// @nodoc
mixin _$CertificatePayload {
  List<Certificate> get content => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get totalElements => throw _privateConstructorUsedError;
  int get numberOfElements => throw _privateConstructorUsedError;
  bool get last => throw _privateConstructorUsedError;
  bool get first => throw _privateConstructorUsedError;
  bool get empty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CertificatePayloadCopyWith<CertificatePayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CertificatePayloadCopyWith<$Res> {
  factory $CertificatePayloadCopyWith(
          CertificatePayload value, $Res Function(CertificatePayload) then) =
      _$CertificatePayloadCopyWithImpl<$Res>;
  $Res call(
      {List<Certificate> content,
      int totalPages,
      int totalElements,
      int numberOfElements,
      bool last,
      bool first,
      bool empty});
}

/// @nodoc
class _$CertificatePayloadCopyWithImpl<$Res>
    implements $CertificatePayloadCopyWith<$Res> {
  _$CertificatePayloadCopyWithImpl(this._value, this._then);

  final CertificatePayload _value;
  // ignore: unused_field
  final $Res Function(CertificatePayload) _then;

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
              as List<Certificate>,
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
abstract class _$$_CertificatePayloadCopyWith<$Res>
    implements $CertificatePayloadCopyWith<$Res> {
  factory _$$_CertificatePayloadCopyWith(_$_CertificatePayload value,
          $Res Function(_$_CertificatePayload) then) =
      __$$_CertificatePayloadCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Certificate> content,
      int totalPages,
      int totalElements,
      int numberOfElements,
      bool last,
      bool first,
      bool empty});
}

/// @nodoc
class __$$_CertificatePayloadCopyWithImpl<$Res>
    extends _$CertificatePayloadCopyWithImpl<$Res>
    implements _$$_CertificatePayloadCopyWith<$Res> {
  __$$_CertificatePayloadCopyWithImpl(
      _$_CertificatePayload _value, $Res Function(_$_CertificatePayload) _then)
      : super(_value, (v) => _then(v as _$_CertificatePayload));

  @override
  _$_CertificatePayload get _value => super._value as _$_CertificatePayload;

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
    return _then(_$_CertificatePayload(
      content: content == freezed
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<Certificate>,
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
class _$_CertificatePayload implements _CertificatePayload {
  const _$_CertificatePayload(
      {final List<Certificate> content = const [],
      required this.totalPages,
      required this.totalElements,
      required this.numberOfElements,
      required this.last,
      required this.first,
      required this.empty})
      : _content = content;

  factory _$_CertificatePayload.fromJson(Map<String, dynamic> json) =>
      _$$_CertificatePayloadFromJson(json);

  final List<Certificate> _content;
  @override
  @JsonKey()
  List<Certificate> get content {
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
    return 'CertificatePayload(content: $content, totalPages: $totalPages, totalElements: $totalElements, numberOfElements: $numberOfElements, last: $last, first: $first, empty: $empty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CertificatePayload &&
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
  _$$_CertificatePayloadCopyWith<_$_CertificatePayload> get copyWith =>
      __$$_CertificatePayloadCopyWithImpl<_$_CertificatePayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CertificatePayloadToJson(this);
  }
}

abstract class _CertificatePayload implements CertificatePayload {
  const factory _CertificatePayload(
      {final List<Certificate> content,
      required final int totalPages,
      required final int totalElements,
      required final int numberOfElements,
      required final bool last,
      required final bool first,
      required final bool empty}) = _$_CertificatePayload;

  factory _CertificatePayload.fromJson(Map<String, dynamic> json) =
      _$_CertificatePayload.fromJson;

  @override
  List<Certificate> get content => throw _privateConstructorUsedError;
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
  _$$_CertificatePayloadCopyWith<_$_CertificatePayload> get copyWith =>
      throw _privateConstructorUsedError;
}
