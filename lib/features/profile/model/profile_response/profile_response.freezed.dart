// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileResponse _$ProfileResponseFromJson(Map<String, dynamic> json) {
  return _ProfileResponse.fromJson(json);
}

/// @nodoc
mixin _$ProfileResponse {
  dynamic get success => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isImageUploading => throw _privateConstructorUsedError;
  ProfilePayload? get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileResponseCopyWith<ProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileResponseCopyWith<$Res> {
  factory $ProfileResponseCopyWith(
          ProfileResponse value, $Res Function(ProfileResponse) then) =
      _$ProfileResponseCopyWithImpl<$Res>;
  $Res call(
      {dynamic success,
      String? status,
      String? message,
      bool isLoading,
      bool isImageUploading,
      ProfilePayload? payload});

  $ProfilePayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class _$ProfileResponseCopyWithImpl<$Res>
    implements $ProfileResponseCopyWith<$Res> {
  _$ProfileResponseCopyWithImpl(this._value, this._then);

  final ProfileResponse _value;
  // ignore: unused_field
  final $Res Function(ProfileResponse) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? isLoading = freezed,
    Object? isImageUploading = freezed,
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
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isImageUploading: isImageUploading == freezed
          ? _value.isImageUploading
          : isImageUploading // ignore: cast_nullable_to_non_nullable
              as bool,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as ProfilePayload?,
    ));
  }

  @override
  $ProfilePayloadCopyWith<$Res>? get payload {
    if (_value.payload == null) {
      return null;
    }

    return $ProfilePayloadCopyWith<$Res>(_value.payload!, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }
}

/// @nodoc
abstract class _$$_ProfileResponseCopyWith<$Res>
    implements $ProfileResponseCopyWith<$Res> {
  factory _$$_ProfileResponseCopyWith(
          _$_ProfileResponse value, $Res Function(_$_ProfileResponse) then) =
      __$$_ProfileResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic success,
      String? status,
      String? message,
      bool isLoading,
      bool isImageUploading,
      ProfilePayload? payload});

  @override
  $ProfilePayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class __$$_ProfileResponseCopyWithImpl<$Res>
    extends _$ProfileResponseCopyWithImpl<$Res>
    implements _$$_ProfileResponseCopyWith<$Res> {
  __$$_ProfileResponseCopyWithImpl(
      _$_ProfileResponse _value, $Res Function(_$_ProfileResponse) _then)
      : super(_value, (v) => _then(v as _$_ProfileResponse));

  @override
  _$_ProfileResponse get _value => super._value as _$_ProfileResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? isLoading = freezed,
    Object? isImageUploading = freezed,
    Object? payload = freezed,
  }) {
    return _then(_$_ProfileResponse(
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
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isImageUploading: isImageUploading == freezed
          ? _value.isImageUploading
          : isImageUploading // ignore: cast_nullable_to_non_nullable
              as bool,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as ProfilePayload?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileResponse implements _ProfileResponse {
  const _$_ProfileResponse(
      {this.success,
      this.status,
      this.message,
      this.isLoading = false,
      this.isImageUploading = false,
      this.payload});

  factory _$_ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileResponseFromJson(json);

  @override
  final dynamic success;
  @override
  final String? status;
  @override
  final String? message;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isImageUploading;
  @override
  final ProfilePayload? payload;

  @override
  String toString() {
    return 'ProfileResponse(success: $success, status: $status, message: $message, isLoading: $isLoading, isImageUploading: $isImageUploading, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileResponse &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isImageUploading, isImageUploading) &&
            const DeepCollectionEquality().equals(other.payload, payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isImageUploading),
      const DeepCollectionEquality().hash(payload));

  @JsonKey(ignore: true)
  @override
  _$$_ProfileResponseCopyWith<_$_ProfileResponse> get copyWith =>
      __$$_ProfileResponseCopyWithImpl<_$_ProfileResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileResponseToJson(this);
  }
}

abstract class _ProfileResponse implements ProfileResponse {
  const factory _ProfileResponse(
      {final dynamic success,
      final String? status,
      final String? message,
      final bool isLoading,
      final bool isImageUploading,
      final ProfilePayload? payload}) = _$_ProfileResponse;

  factory _ProfileResponse.fromJson(Map<String, dynamic> json) =
      _$_ProfileResponse.fromJson;

  @override
  dynamic get success => throw _privateConstructorUsedError;
  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isImageUploading => throw _privateConstructorUsedError;
  @override
  ProfilePayload? get payload => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileResponseCopyWith<_$_ProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfilePayload _$ProfilePayloadFromJson(Map<String, dynamic> json) {
  return _ProfilePayload.fromJson(json);
}

/// @nodoc
mixin _$ProfilePayload {
  User get user => throw _privateConstructorUsedError;
  UserDetails? get userDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfilePayloadCopyWith<ProfilePayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfilePayloadCopyWith<$Res> {
  factory $ProfilePayloadCopyWith(
          ProfilePayload value, $Res Function(ProfilePayload) then) =
      _$ProfilePayloadCopyWithImpl<$Res>;
  $Res call({User user, UserDetails? userDetails});

  $UserCopyWith<$Res> get user;
  $UserDetailsCopyWith<$Res>? get userDetails;
}

/// @nodoc
class _$ProfilePayloadCopyWithImpl<$Res>
    implements $ProfilePayloadCopyWith<$Res> {
  _$ProfilePayloadCopyWithImpl(this._value, this._then);

  final ProfilePayload _value;
  // ignore: unused_field
  final $Res Function(ProfilePayload) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? userDetails = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      userDetails: userDetails == freezed
          ? _value.userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as UserDetails?,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $UserDetailsCopyWith<$Res>? get userDetails {
    if (_value.userDetails == null) {
      return null;
    }

    return $UserDetailsCopyWith<$Res>(_value.userDetails!, (value) {
      return _then(_value.copyWith(userDetails: value));
    });
  }
}

/// @nodoc
abstract class _$$_ProfilePayloadCopyWith<$Res>
    implements $ProfilePayloadCopyWith<$Res> {
  factory _$$_ProfilePayloadCopyWith(
          _$_ProfilePayload value, $Res Function(_$_ProfilePayload) then) =
      __$$_ProfilePayloadCopyWithImpl<$Res>;
  @override
  $Res call({User user, UserDetails? userDetails});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $UserDetailsCopyWith<$Res>? get userDetails;
}

/// @nodoc
class __$$_ProfilePayloadCopyWithImpl<$Res>
    extends _$ProfilePayloadCopyWithImpl<$Res>
    implements _$$_ProfilePayloadCopyWith<$Res> {
  __$$_ProfilePayloadCopyWithImpl(
      _$_ProfilePayload _value, $Res Function(_$_ProfilePayload) _then)
      : super(_value, (v) => _then(v as _$_ProfilePayload));

  @override
  _$_ProfilePayload get _value => super._value as _$_ProfilePayload;

  @override
  $Res call({
    Object? user = freezed,
    Object? userDetails = freezed,
  }) {
    return _then(_$_ProfilePayload(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      userDetails: userDetails == freezed
          ? _value.userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as UserDetails?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfilePayload implements _ProfilePayload {
  const _$_ProfilePayload({required this.user, this.userDetails});

  factory _$_ProfilePayload.fromJson(Map<String, dynamic> json) =>
      _$$_ProfilePayloadFromJson(json);

  @override
  final User user;
  @override
  final UserDetails? userDetails;

  @override
  String toString() {
    return 'ProfilePayload(user: $user, userDetails: $userDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfilePayload &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other.userDetails, userDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(userDetails));

  @JsonKey(ignore: true)
  @override
  _$$_ProfilePayloadCopyWith<_$_ProfilePayload> get copyWith =>
      __$$_ProfilePayloadCopyWithImpl<_$_ProfilePayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfilePayloadToJson(this);
  }
}

abstract class _ProfilePayload implements ProfilePayload {
  const factory _ProfilePayload(
      {required final User user,
      final UserDetails? userDetails}) = _$_ProfilePayload;

  factory _ProfilePayload.fromJson(Map<String, dynamic> json) =
      _$_ProfilePayload.fromJson;

  @override
  User get user => throw _privateConstructorUsedError;
  @override
  UserDetails? get userDetails => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProfilePayloadCopyWith<_$_ProfilePayload> get copyWith =>
      throw _privateConstructorUsedError;
}
