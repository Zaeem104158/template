// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileUpdateRequest _$ProfileUpdateRequestFromJson(Map<String, dynamic> json) {
  return _ProfileUpdateRequest.fromJson(json);
}

/// @nodoc
mixin _$ProfileUpdateRequest {
  int? get addressId => throw _privateConstructorUsedError;
  String? get businessEmail => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileUpdateRequestCopyWith<ProfileUpdateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileUpdateRequestCopyWith<$Res> {
  factory $ProfileUpdateRequestCopyWith(ProfileUpdateRequest value,
          $Res Function(ProfileUpdateRequest) then) =
      _$ProfileUpdateRequestCopyWithImpl<$Res>;
  $Res call(
      {int? addressId,
      String? businessEmail,
      String? name,
      String? phone,
      String? website});
}

/// @nodoc
class _$ProfileUpdateRequestCopyWithImpl<$Res>
    implements $ProfileUpdateRequestCopyWith<$Res> {
  _$ProfileUpdateRequestCopyWithImpl(this._value, this._then);

  final ProfileUpdateRequest _value;
  // ignore: unused_field
  final $Res Function(ProfileUpdateRequest) _then;

  @override
  $Res call({
    Object? addressId = freezed,
    Object? businessEmail = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? website = freezed,
  }) {
    return _then(_value.copyWith(
      addressId: addressId == freezed
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as int?,
      businessEmail: businessEmail == freezed
          ? _value.businessEmail
          : businessEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      website: website == freezed
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ProfileUpdateRequestCopyWith<$Res>
    implements $ProfileUpdateRequestCopyWith<$Res> {
  factory _$$_ProfileUpdateRequestCopyWith(_$_ProfileUpdateRequest value,
          $Res Function(_$_ProfileUpdateRequest) then) =
      __$$_ProfileUpdateRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? addressId,
      String? businessEmail,
      String? name,
      String? phone,
      String? website});
}

/// @nodoc
class __$$_ProfileUpdateRequestCopyWithImpl<$Res>
    extends _$ProfileUpdateRequestCopyWithImpl<$Res>
    implements _$$_ProfileUpdateRequestCopyWith<$Res> {
  __$$_ProfileUpdateRequestCopyWithImpl(_$_ProfileUpdateRequest _value,
      $Res Function(_$_ProfileUpdateRequest) _then)
      : super(_value, (v) => _then(v as _$_ProfileUpdateRequest));

  @override
  _$_ProfileUpdateRequest get _value => super._value as _$_ProfileUpdateRequest;

  @override
  $Res call({
    Object? addressId = freezed,
    Object? businessEmail = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? website = freezed,
  }) {
    return _then(_$_ProfileUpdateRequest(
      addressId: addressId == freezed
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as int?,
      businessEmail: businessEmail == freezed
          ? _value.businessEmail
          : businessEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      website: website == freezed
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileUpdateRequest implements _ProfileUpdateRequest {
  const _$_ProfileUpdateRequest(
      {this.addressId,
      this.businessEmail,
      this.name,
      this.phone,
      this.website});

  factory _$_ProfileUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileUpdateRequestFromJson(json);

  @override
  final int? addressId;
  @override
  final String? businessEmail;
  @override
  final String? name;
  @override
  final String? phone;
  @override
  final String? website;

  @override
  String toString() {
    return 'ProfileUpdateRequest(addressId: $addressId, businessEmail: $businessEmail, name: $name, phone: $phone, website: $website)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileUpdateRequest &&
            const DeepCollectionEquality().equals(other.addressId, addressId) &&
            const DeepCollectionEquality()
                .equals(other.businessEmail, businessEmail) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.website, website));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(addressId),
      const DeepCollectionEquality().hash(businessEmail),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(website));

  @JsonKey(ignore: true)
  @override
  _$$_ProfileUpdateRequestCopyWith<_$_ProfileUpdateRequest> get copyWith =>
      __$$_ProfileUpdateRequestCopyWithImpl<_$_ProfileUpdateRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileUpdateRequestToJson(this);
  }
}

abstract class _ProfileUpdateRequest implements ProfileUpdateRequest {
  const factory _ProfileUpdateRequest(
      {final int? addressId,
      final String? businessEmail,
      final String? name,
      final String? phone,
      final String? website}) = _$_ProfileUpdateRequest;

  factory _ProfileUpdateRequest.fromJson(Map<String, dynamic> json) =
      _$_ProfileUpdateRequest.fromJson;

  @override
  int? get addressId => throw _privateConstructorUsedError;
  @override
  String? get businessEmail => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get phone => throw _privateConstructorUsedError;
  @override
  String? get website => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileUpdateRequestCopyWith<_$_ProfileUpdateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
