// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'terms_privacy_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TermsPrivacyResponse _$TermsPrivacyResponseFromJson(Map<String, dynamic> json) {
  return _TermsPrivacyResponse.fromJson(json);
}

/// @nodoc
mixin _$TermsPrivacyResponse {
  dynamic get success => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  TermsPrivacyPayload? get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TermsPrivacyResponseCopyWith<TermsPrivacyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermsPrivacyResponseCopyWith<$Res> {
  factory $TermsPrivacyResponseCopyWith(TermsPrivacyResponse value,
          $Res Function(TermsPrivacyResponse) then) =
      _$TermsPrivacyResponseCopyWithImpl<$Res>;
  $Res call(
      {dynamic success,
      String? status,
      String? message,
      TermsPrivacyPayload? payload});

  $TermsPrivacyPayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class _$TermsPrivacyResponseCopyWithImpl<$Res>
    implements $TermsPrivacyResponseCopyWith<$Res> {
  _$TermsPrivacyResponseCopyWithImpl(this._value, this._then);

  final TermsPrivacyResponse _value;
  // ignore: unused_field
  final $Res Function(TermsPrivacyResponse) _then;

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
              as TermsPrivacyPayload?,
    ));
  }

  @override
  $TermsPrivacyPayloadCopyWith<$Res>? get payload {
    if (_value.payload == null) {
      return null;
    }

    return $TermsPrivacyPayloadCopyWith<$Res>(_value.payload!, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }
}

/// @nodoc
abstract class _$$_TermsPrivacyResponseCopyWith<$Res>
    implements $TermsPrivacyResponseCopyWith<$Res> {
  factory _$$_TermsPrivacyResponseCopyWith(_$_TermsPrivacyResponse value,
          $Res Function(_$_TermsPrivacyResponse) then) =
      __$$_TermsPrivacyResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic success,
      String? status,
      String? message,
      TermsPrivacyPayload? payload});

  @override
  $TermsPrivacyPayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class __$$_TermsPrivacyResponseCopyWithImpl<$Res>
    extends _$TermsPrivacyResponseCopyWithImpl<$Res>
    implements _$$_TermsPrivacyResponseCopyWith<$Res> {
  __$$_TermsPrivacyResponseCopyWithImpl(_$_TermsPrivacyResponse _value,
      $Res Function(_$_TermsPrivacyResponse) _then)
      : super(_value, (v) => _then(v as _$_TermsPrivacyResponse));

  @override
  _$_TermsPrivacyResponse get _value => super._value as _$_TermsPrivacyResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? payload = freezed,
  }) {
    return _then(_$_TermsPrivacyResponse(
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
              as TermsPrivacyPayload?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TermsPrivacyResponse implements _TermsPrivacyResponse {
  const _$_TermsPrivacyResponse(
      {this.success, this.status, this.message, this.payload});

  factory _$_TermsPrivacyResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TermsPrivacyResponseFromJson(json);

  @override
  final dynamic success;
  @override
  final String? status;
  @override
  final String? message;
  @override
  final TermsPrivacyPayload? payload;

  @override
  String toString() {
    return 'TermsPrivacyResponse(success: $success, status: $status, message: $message, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TermsPrivacyResponse &&
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
  _$$_TermsPrivacyResponseCopyWith<_$_TermsPrivacyResponse> get copyWith =>
      __$$_TermsPrivacyResponseCopyWithImpl<_$_TermsPrivacyResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TermsPrivacyResponseToJson(this);
  }
}

abstract class _TermsPrivacyResponse implements TermsPrivacyResponse {
  const factory _TermsPrivacyResponse(
      {final dynamic success,
      final String? status,
      final String? message,
      final TermsPrivacyPayload? payload}) = _$_TermsPrivacyResponse;

  factory _TermsPrivacyResponse.fromJson(Map<String, dynamic> json) =
      _$_TermsPrivacyResponse.fromJson;

  @override
  dynamic get success => throw _privateConstructorUsedError;
  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  TermsPrivacyPayload? get payload => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TermsPrivacyResponseCopyWith<_$_TermsPrivacyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

TermsPrivacyPayload _$TermsPrivacyPayloadFromJson(Map<String, dynamic> json) {
  return _TermsPrivacyPayload.fromJson(json);
}

/// @nodoc
mixin _$TermsPrivacyPayload {
  int get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get subTitle => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get tag => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TermsPrivacyPayloadCopyWith<TermsPrivacyPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermsPrivacyPayloadCopyWith<$Res> {
  factory $TermsPrivacyPayloadCopyWith(
          TermsPrivacyPayload value, $Res Function(TermsPrivacyPayload) then) =
      _$TermsPrivacyPayloadCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String? title,
      String? subTitle,
      String? description,
      String? tag,
      String? slug});
}

/// @nodoc
class _$TermsPrivacyPayloadCopyWithImpl<$Res>
    implements $TermsPrivacyPayloadCopyWith<$Res> {
  _$TermsPrivacyPayloadCopyWithImpl(this._value, this._then);

  final TermsPrivacyPayload _value;
  // ignore: unused_field
  final $Res Function(TermsPrivacyPayload) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? subTitle = freezed,
    Object? description = freezed,
    Object? tag = freezed,
    Object? slug = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subTitle: subTitle == freezed
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_TermsPrivacyPayloadCopyWith<$Res>
    implements $TermsPrivacyPayloadCopyWith<$Res> {
  factory _$$_TermsPrivacyPayloadCopyWith(_$_TermsPrivacyPayload value,
          $Res Function(_$_TermsPrivacyPayload) then) =
      __$$_TermsPrivacyPayloadCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String? title,
      String? subTitle,
      String? description,
      String? tag,
      String? slug});
}

/// @nodoc
class __$$_TermsPrivacyPayloadCopyWithImpl<$Res>
    extends _$TermsPrivacyPayloadCopyWithImpl<$Res>
    implements _$$_TermsPrivacyPayloadCopyWith<$Res> {
  __$$_TermsPrivacyPayloadCopyWithImpl(_$_TermsPrivacyPayload _value,
      $Res Function(_$_TermsPrivacyPayload) _then)
      : super(_value, (v) => _then(v as _$_TermsPrivacyPayload));

  @override
  _$_TermsPrivacyPayload get _value => super._value as _$_TermsPrivacyPayload;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? subTitle = freezed,
    Object? description = freezed,
    Object? tag = freezed,
    Object? slug = freezed,
  }) {
    return _then(_$_TermsPrivacyPayload(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subTitle: subTitle == freezed
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TermsPrivacyPayload implements _TermsPrivacyPayload {
  const _$_TermsPrivacyPayload(
      {required this.id,
      this.title,
      this.subTitle,
      this.description,
      this.tag,
      this.slug});

  factory _$_TermsPrivacyPayload.fromJson(Map<String, dynamic> json) =>
      _$$_TermsPrivacyPayloadFromJson(json);

  @override
  final int id;
  @override
  final String? title;
  @override
  final String? subTitle;
  @override
  final String? description;
  @override
  final String? tag;
  @override
  final String? slug;

  @override
  String toString() {
    return 'TermsPrivacyPayload(id: $id, title: $title, subTitle: $subTitle, description: $description, tag: $tag, slug: $slug)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TermsPrivacyPayload &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.subTitle, subTitle) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.tag, tag) &&
            const DeepCollectionEquality().equals(other.slug, slug));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(subTitle),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(tag),
      const DeepCollectionEquality().hash(slug));

  @JsonKey(ignore: true)
  @override
  _$$_TermsPrivacyPayloadCopyWith<_$_TermsPrivacyPayload> get copyWith =>
      __$$_TermsPrivacyPayloadCopyWithImpl<_$_TermsPrivacyPayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TermsPrivacyPayloadToJson(this);
  }
}

abstract class _TermsPrivacyPayload implements TermsPrivacyPayload {
  const factory _TermsPrivacyPayload(
      {required final int id,
      final String? title,
      final String? subTitle,
      final String? description,
      final String? tag,
      final String? slug}) = _$_TermsPrivacyPayload;

  factory _TermsPrivacyPayload.fromJson(Map<String, dynamic> json) =
      _$_TermsPrivacyPayload.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get subTitle => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get tag => throw _privateConstructorUsedError;
  @override
  String? get slug => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TermsPrivacyPayloadCopyWith<_$_TermsPrivacyPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
