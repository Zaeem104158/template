// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_paginated_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductPaginatedResponse _$ProductPaginatedResponseFromJson(
    Map<String, dynamic> json) {
  return _ProductPaginatedResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductPaginatedResponse {
  dynamic get success => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  ProductPayload get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductPaginatedResponseCopyWith<ProductPaginatedResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductPaginatedResponseCopyWith<$Res> {
  factory $ProductPaginatedResponseCopyWith(ProductPaginatedResponse value,
          $Res Function(ProductPaginatedResponse) then) =
      _$ProductPaginatedResponseCopyWithImpl<$Res>;
  $Res call(
      {dynamic success,
      String? status,
      String? message,
      ProductPayload payload});

  $ProductPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$ProductPaginatedResponseCopyWithImpl<$Res>
    implements $ProductPaginatedResponseCopyWith<$Res> {
  _$ProductPaginatedResponseCopyWithImpl(this._value, this._then);

  final ProductPaginatedResponse _value;
  // ignore: unused_field
  final $Res Function(ProductPaginatedResponse) _then;

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
              as ProductPayload,
    ));
  }

  @override
  $ProductPayloadCopyWith<$Res> get payload {
    return $ProductPayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }
}

/// @nodoc
abstract class _$$_ProductPaginatedResponseCopyWith<$Res>
    implements $ProductPaginatedResponseCopyWith<$Res> {
  factory _$$_ProductPaginatedResponseCopyWith(
          _$_ProductPaginatedResponse value,
          $Res Function(_$_ProductPaginatedResponse) then) =
      __$$_ProductPaginatedResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic success,
      String? status,
      String? message,
      ProductPayload payload});

  @override
  $ProductPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$_ProductPaginatedResponseCopyWithImpl<$Res>
    extends _$ProductPaginatedResponseCopyWithImpl<$Res>
    implements _$$_ProductPaginatedResponseCopyWith<$Res> {
  __$$_ProductPaginatedResponseCopyWithImpl(_$_ProductPaginatedResponse _value,
      $Res Function(_$_ProductPaginatedResponse) _then)
      : super(_value, (v) => _then(v as _$_ProductPaginatedResponse));

  @override
  _$_ProductPaginatedResponse get _value =>
      super._value as _$_ProductPaginatedResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? payload = freezed,
  }) {
    return _then(_$_ProductPaginatedResponse(
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
              as ProductPayload,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductPaginatedResponse implements _ProductPaginatedResponse {
  const _$_ProductPaginatedResponse(
      {this.success, this.status, this.message, required this.payload});

  factory _$_ProductPaginatedResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ProductPaginatedResponseFromJson(json);

  @override
  final dynamic success;
  @override
  final String? status;
  @override
  final String? message;
  @override
  final ProductPayload payload;

  @override
  String toString() {
    return 'ProductPaginatedResponse(success: $success, status: $status, message: $message, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductPaginatedResponse &&
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
  _$$_ProductPaginatedResponseCopyWith<_$_ProductPaginatedResponse>
      get copyWith => __$$_ProductPaginatedResponseCopyWithImpl<
          _$_ProductPaginatedResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductPaginatedResponseToJson(this);
  }
}

abstract class _ProductPaginatedResponse implements ProductPaginatedResponse {
  const factory _ProductPaginatedResponse(
      {final dynamic success,
      final String? status,
      final String? message,
      required final ProductPayload payload}) = _$_ProductPaginatedResponse;

  factory _ProductPaginatedResponse.fromJson(Map<String, dynamic> json) =
      _$_ProductPaginatedResponse.fromJson;

  @override
  dynamic get success => throw _privateConstructorUsedError;
  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  ProductPayload get payload => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProductPaginatedResponseCopyWith<_$_ProductPaginatedResponse>
      get copyWith => throw _privateConstructorUsedError;
}

ProductPayload _$ProductPayloadFromJson(Map<String, dynamic> json) {
  return _ProductPayload.fromJson(json);
}

/// @nodoc
mixin _$ProductPayload {
  List<Product> get content => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get totalElements => throw _privateConstructorUsedError;
  int get numberOfElements => throw _privateConstructorUsedError;
  bool get last => throw _privateConstructorUsedError;
  bool get first => throw _privateConstructorUsedError;
  bool get empty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductPayloadCopyWith<ProductPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductPayloadCopyWith<$Res> {
  factory $ProductPayloadCopyWith(
          ProductPayload value, $Res Function(ProductPayload) then) =
      _$ProductPayloadCopyWithImpl<$Res>;
  $Res call(
      {List<Product> content,
      int totalPages,
      int totalElements,
      int numberOfElements,
      bool last,
      bool first,
      bool empty});
}

/// @nodoc
class _$ProductPayloadCopyWithImpl<$Res>
    implements $ProductPayloadCopyWith<$Res> {
  _$ProductPayloadCopyWithImpl(this._value, this._then);

  final ProductPayload _value;
  // ignore: unused_field
  final $Res Function(ProductPayload) _then;

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
              as List<Product>,
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
abstract class _$$_ProductPayloadCopyWith<$Res>
    implements $ProductPayloadCopyWith<$Res> {
  factory _$$_ProductPayloadCopyWith(
          _$_ProductPayload value, $Res Function(_$_ProductPayload) then) =
      __$$_ProductPayloadCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Product> content,
      int totalPages,
      int totalElements,
      int numberOfElements,
      bool last,
      bool first,
      bool empty});
}

/// @nodoc
class __$$_ProductPayloadCopyWithImpl<$Res>
    extends _$ProductPayloadCopyWithImpl<$Res>
    implements _$$_ProductPayloadCopyWith<$Res> {
  __$$_ProductPayloadCopyWithImpl(
      _$_ProductPayload _value, $Res Function(_$_ProductPayload) _then)
      : super(_value, (v) => _then(v as _$_ProductPayload));

  @override
  _$_ProductPayload get _value => super._value as _$_ProductPayload;

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
    return _then(_$_ProductPayload(
      content: content == freezed
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<Product>,
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
class _$_ProductPayload implements _ProductPayload {
  const _$_ProductPayload(
      {final List<Product> content = const [],
      required this.totalPages,
      required this.totalElements,
      required this.numberOfElements,
      required this.last,
      required this.first,
      required this.empty})
      : _content = content;

  factory _$_ProductPayload.fromJson(Map<String, dynamic> json) =>
      _$$_ProductPayloadFromJson(json);

  final List<Product> _content;
  @override
  @JsonKey()
  List<Product> get content {
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
    return 'ProductPayload(content: $content, totalPages: $totalPages, totalElements: $totalElements, numberOfElements: $numberOfElements, last: $last, first: $first, empty: $empty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductPayload &&
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
  _$$_ProductPayloadCopyWith<_$_ProductPayload> get copyWith =>
      __$$_ProductPayloadCopyWithImpl<_$_ProductPayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductPayloadToJson(this);
  }
}

abstract class _ProductPayload implements ProductPayload {
  const factory _ProductPayload(
      {final List<Product> content,
      required final int totalPages,
      required final int totalElements,
      required final int numberOfElements,
      required final bool last,
      required final bool first,
      required final bool empty}) = _$_ProductPayload;

  factory _ProductPayload.fromJson(Map<String, dynamic> json) =
      _$_ProductPayload.fromJson;

  @override
  List<Product> get content => throw _privateConstructorUsedError;
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
  _$$_ProductPayloadCopyWith<_$_ProductPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
