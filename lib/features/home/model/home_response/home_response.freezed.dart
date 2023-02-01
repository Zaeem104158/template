// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeApiResponse _$HomeApiResponseFromJson(Map<String, dynamic> json) {
  return _HomeApiResponse.fromJson(json);
}

/// @nodoc
mixin _$HomeApiResponse {
  ProductPaginatedResponse? get productPaginatedResponse =>
      throw _privateConstructorUsedError;
  ProductListResponse? get productListResponse =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeApiResponseCopyWith<HomeApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeApiResponseCopyWith<$Res> {
  factory $HomeApiResponseCopyWith(
          HomeApiResponse value, $Res Function(HomeApiResponse) then) =
      _$HomeApiResponseCopyWithImpl<$Res>;
  $Res call(
      {ProductPaginatedResponse? productPaginatedResponse,
      ProductListResponse? productListResponse});

  $ProductPaginatedResponseCopyWith<$Res>? get productPaginatedResponse;
  $ProductListResponseCopyWith<$Res>? get productListResponse;
}

/// @nodoc
class _$HomeApiResponseCopyWithImpl<$Res>
    implements $HomeApiResponseCopyWith<$Res> {
  _$HomeApiResponseCopyWithImpl(this._value, this._then);

  final HomeApiResponse _value;
  // ignore: unused_field
  final $Res Function(HomeApiResponse) _then;

  @override
  $Res call({
    Object? productPaginatedResponse = freezed,
    Object? productListResponse = freezed,
  }) {
    return _then(_value.copyWith(
      productPaginatedResponse: productPaginatedResponse == freezed
          ? _value.productPaginatedResponse
          : productPaginatedResponse // ignore: cast_nullable_to_non_nullable
              as ProductPaginatedResponse?,
      productListResponse: productListResponse == freezed
          ? _value.productListResponse
          : productListResponse // ignore: cast_nullable_to_non_nullable
              as ProductListResponse?,
    ));
  }

  @override
  $ProductPaginatedResponseCopyWith<$Res>? get productPaginatedResponse {
    if (_value.productPaginatedResponse == null) {
      return null;
    }

    return $ProductPaginatedResponseCopyWith<$Res>(
        _value.productPaginatedResponse!, (value) {
      return _then(_value.copyWith(productPaginatedResponse: value));
    });
  }

  @override
  $ProductListResponseCopyWith<$Res>? get productListResponse {
    if (_value.productListResponse == null) {
      return null;
    }

    return $ProductListResponseCopyWith<$Res>(_value.productListResponse!,
        (value) {
      return _then(_value.copyWith(productListResponse: value));
    });
  }
}

/// @nodoc
abstract class _$$_HomeApiResponseCopyWith<$Res>
    implements $HomeApiResponseCopyWith<$Res> {
  factory _$$_HomeApiResponseCopyWith(
          _$_HomeApiResponse value, $Res Function(_$_HomeApiResponse) then) =
      __$$_HomeApiResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {ProductPaginatedResponse? productPaginatedResponse,
      ProductListResponse? productListResponse});

  @override
  $ProductPaginatedResponseCopyWith<$Res>? get productPaginatedResponse;
  @override
  $ProductListResponseCopyWith<$Res>? get productListResponse;
}

/// @nodoc
class __$$_HomeApiResponseCopyWithImpl<$Res>
    extends _$HomeApiResponseCopyWithImpl<$Res>
    implements _$$_HomeApiResponseCopyWith<$Res> {
  __$$_HomeApiResponseCopyWithImpl(
      _$_HomeApiResponse _value, $Res Function(_$_HomeApiResponse) _then)
      : super(_value, (v) => _then(v as _$_HomeApiResponse));

  @override
  _$_HomeApiResponse get _value => super._value as _$_HomeApiResponse;

  @override
  $Res call({
    Object? productPaginatedResponse = freezed,
    Object? productListResponse = freezed,
  }) {
    return _then(_$_HomeApiResponse(
      productPaginatedResponse: productPaginatedResponse == freezed
          ? _value.productPaginatedResponse
          : productPaginatedResponse // ignore: cast_nullable_to_non_nullable
              as ProductPaginatedResponse?,
      productListResponse: productListResponse == freezed
          ? _value.productListResponse
          : productListResponse // ignore: cast_nullable_to_non_nullable
              as ProductListResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeApiResponse implements _HomeApiResponse {
  const _$_HomeApiResponse(
      {this.productPaginatedResponse, this.productListResponse});

  factory _$_HomeApiResponse.fromJson(Map<String, dynamic> json) =>
      _$$_HomeApiResponseFromJson(json);

  @override
  final ProductPaginatedResponse? productPaginatedResponse;
  @override
  final ProductListResponse? productListResponse;

  @override
  String toString() {
    return 'HomeApiResponse(productPaginatedResponse: $productPaginatedResponse, productListResponse: $productListResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeApiResponse &&
            const DeepCollectionEquality().equals(
                other.productPaginatedResponse, productPaginatedResponse) &&
            const DeepCollectionEquality()
                .equals(other.productListResponse, productListResponse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(productPaginatedResponse),
      const DeepCollectionEquality().hash(productListResponse));

  @JsonKey(ignore: true)
  @override
  _$$_HomeApiResponseCopyWith<_$_HomeApiResponse> get copyWith =>
      __$$_HomeApiResponseCopyWithImpl<_$_HomeApiResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeApiResponseToJson(this);
  }
}

abstract class _HomeApiResponse implements HomeApiResponse {
  const factory _HomeApiResponse(
      {final ProductPaginatedResponse? productPaginatedResponse,
      final ProductListResponse? productListResponse}) = _$_HomeApiResponse;

  factory _HomeApiResponse.fromJson(Map<String, dynamic> json) =
      _$_HomeApiResponse.fromJson;

  @override
  ProductPaginatedResponse? get productPaginatedResponse =>
      throw _privateConstructorUsedError;
  @override
  ProductListResponse? get productListResponse =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_HomeApiResponseCopyWith<_$_HomeApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
