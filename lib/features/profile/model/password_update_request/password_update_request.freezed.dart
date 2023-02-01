// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'password_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PasswordUpdateRequest _$PasswordUpdateRequestFromJson(
    Map<String, dynamic> json) {
  return _PasswordUpdateRequest.fromJson(json);
}

/// @nodoc
mixin _$PasswordUpdateRequest {
  String? get email => throw _privateConstructorUsedError;
  String? get newPassword => throw _privateConstructorUsedError;
  String? get previousPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordUpdateRequestCopyWith<PasswordUpdateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordUpdateRequestCopyWith<$Res> {
  factory $PasswordUpdateRequestCopyWith(PasswordUpdateRequest value,
          $Res Function(PasswordUpdateRequest) then) =
      _$PasswordUpdateRequestCopyWithImpl<$Res>;
  $Res call({String? email, String? newPassword, String? previousPassword});
}

/// @nodoc
class _$PasswordUpdateRequestCopyWithImpl<$Res>
    implements $PasswordUpdateRequestCopyWith<$Res> {
  _$PasswordUpdateRequestCopyWithImpl(this._value, this._then);

  final PasswordUpdateRequest _value;
  // ignore: unused_field
  final $Res Function(PasswordUpdateRequest) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? newPassword = freezed,
    Object? previousPassword = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      previousPassword: previousPassword == freezed
          ? _value.previousPassword
          : previousPassword // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PasswordUpdateRequestCopyWith<$Res>
    implements $PasswordUpdateRequestCopyWith<$Res> {
  factory _$$_PasswordUpdateRequestCopyWith(_$_PasswordUpdateRequest value,
          $Res Function(_$_PasswordUpdateRequest) then) =
      __$$_PasswordUpdateRequestCopyWithImpl<$Res>;
  @override
  $Res call({String? email, String? newPassword, String? previousPassword});
}

/// @nodoc
class __$$_PasswordUpdateRequestCopyWithImpl<$Res>
    extends _$PasswordUpdateRequestCopyWithImpl<$Res>
    implements _$$_PasswordUpdateRequestCopyWith<$Res> {
  __$$_PasswordUpdateRequestCopyWithImpl(_$_PasswordUpdateRequest _value,
      $Res Function(_$_PasswordUpdateRequest) _then)
      : super(_value, (v) => _then(v as _$_PasswordUpdateRequest));

  @override
  _$_PasswordUpdateRequest get _value =>
      super._value as _$_PasswordUpdateRequest;

  @override
  $Res call({
    Object? email = freezed,
    Object? newPassword = freezed,
    Object? previousPassword = freezed,
  }) {
    return _then(_$_PasswordUpdateRequest(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      previousPassword: previousPassword == freezed
          ? _value.previousPassword
          : previousPassword // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PasswordUpdateRequest implements _PasswordUpdateRequest {
  const _$_PasswordUpdateRequest(
      {this.email, this.newPassword, this.previousPassword});

  factory _$_PasswordUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$$_PasswordUpdateRequestFromJson(json);

  @override
  final String? email;
  @override
  final String? newPassword;
  @override
  final String? previousPassword;

  @override
  String toString() {
    return 'PasswordUpdateRequest(email: $email, newPassword: $newPassword, previousPassword: $previousPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordUpdateRequest &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.newPassword, newPassword) &&
            const DeepCollectionEquality()
                .equals(other.previousPassword, previousPassword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(newPassword),
      const DeepCollectionEquality().hash(previousPassword));

  @JsonKey(ignore: true)
  @override
  _$$_PasswordUpdateRequestCopyWith<_$_PasswordUpdateRequest> get copyWith =>
      __$$_PasswordUpdateRequestCopyWithImpl<_$_PasswordUpdateRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PasswordUpdateRequestToJson(this);
  }
}

abstract class _PasswordUpdateRequest implements PasswordUpdateRequest {
  const factory _PasswordUpdateRequest(
      {final String? email,
      final String? newPassword,
      final String? previousPassword}) = _$_PasswordUpdateRequest;

  factory _PasswordUpdateRequest.fromJson(Map<String, dynamic> json) =
      _$_PasswordUpdateRequest.fromJson;

  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  String? get newPassword => throw _privateConstructorUsedError;
  @override
  String? get previousPassword => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PasswordUpdateRequestCopyWith<_$_PasswordUpdateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
