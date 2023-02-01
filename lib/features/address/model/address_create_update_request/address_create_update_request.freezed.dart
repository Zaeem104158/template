// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'address_create_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddressCreateUpdateRequest _$AddressCreateUpdateRequestFromJson(
    Map<String, dynamic> json) {
  return _AddressCreateUpdateRequest.fromJson(json);
}

/// @nodoc
mixin _$AddressCreateUpdateRequest {
  int? get addressId => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get street => throw _privateConstructorUsedError;
  String? get zipCode => throw _privateConstructorUsedError;
  String? get addressType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressCreateUpdateRequestCopyWith<AddressCreateUpdateRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCreateUpdateRequestCopyWith<$Res> {
  factory $AddressCreateUpdateRequestCopyWith(AddressCreateUpdateRequest value,
          $Res Function(AddressCreateUpdateRequest) then) =
      _$AddressCreateUpdateRequestCopyWithImpl<$Res>;
  $Res call(
      {int? addressId,
      String? city,
      String? state,
      String? street,
      String? zipCode,
      String? addressType});
}

/// @nodoc
class _$AddressCreateUpdateRequestCopyWithImpl<$Res>
    implements $AddressCreateUpdateRequestCopyWith<$Res> {
  _$AddressCreateUpdateRequestCopyWithImpl(this._value, this._then);

  final AddressCreateUpdateRequest _value;
  // ignore: unused_field
  final $Res Function(AddressCreateUpdateRequest) _then;

  @override
  $Res call({
    Object? addressId = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? street = freezed,
    Object? zipCode = freezed,
    Object? addressType = freezed,
  }) {
    return _then(_value.copyWith(
      addressId: addressId == freezed
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as int?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: zipCode == freezed
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      addressType: addressType == freezed
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_AddressCreateUpdateRequestCopyWith<$Res>
    implements $AddressCreateUpdateRequestCopyWith<$Res> {
  factory _$$_AddressCreateUpdateRequestCopyWith(
          _$_AddressCreateUpdateRequest value,
          $Res Function(_$_AddressCreateUpdateRequest) then) =
      __$$_AddressCreateUpdateRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? addressId,
      String? city,
      String? state,
      String? street,
      String? zipCode,
      String? addressType});
}

/// @nodoc
class __$$_AddressCreateUpdateRequestCopyWithImpl<$Res>
    extends _$AddressCreateUpdateRequestCopyWithImpl<$Res>
    implements _$$_AddressCreateUpdateRequestCopyWith<$Res> {
  __$$_AddressCreateUpdateRequestCopyWithImpl(
      _$_AddressCreateUpdateRequest _value,
      $Res Function(_$_AddressCreateUpdateRequest) _then)
      : super(_value, (v) => _then(v as _$_AddressCreateUpdateRequest));

  @override
  _$_AddressCreateUpdateRequest get _value =>
      super._value as _$_AddressCreateUpdateRequest;

  @override
  $Res call({
    Object? addressId = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? street = freezed,
    Object? zipCode = freezed,
    Object? addressType = freezed,
  }) {
    return _then(_$_AddressCreateUpdateRequest(
      addressId: addressId == freezed
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as int?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: zipCode == freezed
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      addressType: addressType == freezed
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddressCreateUpdateRequest implements _AddressCreateUpdateRequest {
  const _$_AddressCreateUpdateRequest(
      {this.addressId,
      this.city,
      this.state,
      this.street,
      this.zipCode,
      this.addressType});

  factory _$_AddressCreateUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$$_AddressCreateUpdateRequestFromJson(json);

  @override
  final int? addressId;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? street;
  @override
  final String? zipCode;
  @override
  final String? addressType;

  @override
  String toString() {
    return 'AddressCreateUpdateRequest(addressId: $addressId, city: $city, state: $state, street: $street, zipCode: $zipCode, addressType: $addressType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressCreateUpdateRequest &&
            const DeepCollectionEquality().equals(other.addressId, addressId) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.street, street) &&
            const DeepCollectionEquality().equals(other.zipCode, zipCode) &&
            const DeepCollectionEquality()
                .equals(other.addressType, addressType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(addressId),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(street),
      const DeepCollectionEquality().hash(zipCode),
      const DeepCollectionEquality().hash(addressType));

  @JsonKey(ignore: true)
  @override
  _$$_AddressCreateUpdateRequestCopyWith<_$_AddressCreateUpdateRequest>
      get copyWith => __$$_AddressCreateUpdateRequestCopyWithImpl<
          _$_AddressCreateUpdateRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressCreateUpdateRequestToJson(this);
  }
}

abstract class _AddressCreateUpdateRequest
    implements AddressCreateUpdateRequest {
  const factory _AddressCreateUpdateRequest(
      {final int? addressId,
      final String? city,
      final String? state,
      final String? street,
      final String? zipCode,
      final String? addressType}) = _$_AddressCreateUpdateRequest;

  factory _AddressCreateUpdateRequest.fromJson(Map<String, dynamic> json) =
      _$_AddressCreateUpdateRequest.fromJson;

  @override
  int? get addressId => throw _privateConstructorUsedError;
  @override
  String? get city => throw _privateConstructorUsedError;
  @override
  String? get state => throw _privateConstructorUsedError;
  @override
  String? get street => throw _privateConstructorUsedError;
  @override
  String? get zipCode => throw _privateConstructorUsedError;
  @override
  String? get addressType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AddressCreateUpdateRequestCopyWith<_$_AddressCreateUpdateRequest>
      get copyWith => throw _privateConstructorUsedError;
}
