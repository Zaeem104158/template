// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDetails _$UserDetailsFromJson(Map<String, dynamic> json) {
  return _UserDetails.fromJson(json);
}

/// @nodoc
mixin _$UserDetails {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  Address? get address => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get website => throw _privateConstructorUsedError;
  String get businessEmail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDetailsCopyWith<UserDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsCopyWith<$Res> {
  factory $UserDetailsCopyWith(
          UserDetails value, $Res Function(UserDetails) then) =
      _$UserDetailsCopyWithImpl<$Res>;
  $Res call(
      {int id,
      int userId,
      Address? address,
      String phone,
      String website,
      String businessEmail});

  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class _$UserDetailsCopyWithImpl<$Res> implements $UserDetailsCopyWith<$Res> {
  _$UserDetailsCopyWithImpl(this._value, this._then);

  final UserDetails _value;
  // ignore: unused_field
  final $Res Function(UserDetails) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? website = freezed,
    Object? businessEmail = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      website: website == freezed
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      businessEmail: businessEmail == freezed
          ? _value.businessEmail
          : businessEmail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value));
    });
  }
}

/// @nodoc
abstract class _$$_UserDetailsCopyWith<$Res>
    implements $UserDetailsCopyWith<$Res> {
  factory _$$_UserDetailsCopyWith(
          _$_UserDetails value, $Res Function(_$_UserDetails) then) =
      __$$_UserDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      int userId,
      Address? address,
      String phone,
      String website,
      String businessEmail});

  @override
  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class __$$_UserDetailsCopyWithImpl<$Res> extends _$UserDetailsCopyWithImpl<$Res>
    implements _$$_UserDetailsCopyWith<$Res> {
  __$$_UserDetailsCopyWithImpl(
      _$_UserDetails _value, $Res Function(_$_UserDetails) _then)
      : super(_value, (v) => _then(v as _$_UserDetails));

  @override
  _$_UserDetails get _value => super._value as _$_UserDetails;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? website = freezed,
    Object? businessEmail = freezed,
  }) {
    return _then(_$_UserDetails(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      website: website == freezed
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      businessEmail: businessEmail == freezed
          ? _value.businessEmail
          : businessEmail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDetails implements _UserDetails {
  const _$_UserDetails(
      {required this.id,
      required this.userId,
      this.address,
      this.phone = "",
      this.website = "",
      this.businessEmail = ""});

  factory _$_UserDetails.fromJson(Map<String, dynamic> json) =>
      _$$_UserDetailsFromJson(json);

  @override
  final int id;
  @override
  final int userId;
  @override
  final Address? address;
  @override
  @JsonKey()
  final String phone;
  @override
  @JsonKey()
  final String website;
  @override
  @JsonKey()
  final String businessEmail;

  @override
  String toString() {
    return 'UserDetails(id: $id, userId: $userId, address: $address, phone: $phone, website: $website, businessEmail: $businessEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDetails &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.website, website) &&
            const DeepCollectionEquality()
                .equals(other.businessEmail, businessEmail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(website),
      const DeepCollectionEquality().hash(businessEmail));

  @JsonKey(ignore: true)
  @override
  _$$_UserDetailsCopyWith<_$_UserDetails> get copyWith =>
      __$$_UserDetailsCopyWithImpl<_$_UserDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDetailsToJson(this);
  }
}

abstract class _UserDetails implements UserDetails {
  const factory _UserDetails(
      {required final int id,
      required final int userId,
      final Address? address,
      final String phone,
      final String website,
      final String businessEmail}) = _$_UserDetails;

  factory _UserDetails.fromJson(Map<String, dynamic> json) =
      _$_UserDetails.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  int get userId => throw _privateConstructorUsedError;
  @override
  Address? get address => throw _privateConstructorUsedError;
  @override
  String get phone => throw _privateConstructorUsedError;
  @override
  String get website => throw _privateConstructorUsedError;
  @override
  String get businessEmail => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserDetailsCopyWith<_$_UserDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
