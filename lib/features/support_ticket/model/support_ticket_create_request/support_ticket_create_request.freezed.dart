// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'support_ticket_create_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SupportTicketCreateRequest _$SupportTicketCreateRequestFromJson(
    Map<String, dynamic> json) {
  return _SupportTicketCreateRequest.fromJson(json);
}

/// @nodoc
mixin _$SupportTicketCreateRequest {
  String? get name => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get desc => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get userEmail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupportTicketCreateRequestCopyWith<SupportTicketCreateRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportTicketCreateRequestCopyWith<$Res> {
  factory $SupportTicketCreateRequestCopyWith(SupportTicketCreateRequest value,
          $Res Function(SupportTicketCreateRequest) then) =
      _$SupportTicketCreateRequestCopyWithImpl<$Res>;
  $Res call(
      {String? name,
      String? title,
      String? desc,
      String? description,
      String? type,
      String? userEmail});
}

/// @nodoc
class _$SupportTicketCreateRequestCopyWithImpl<$Res>
    implements $SupportTicketCreateRequestCopyWith<$Res> {
  _$SupportTicketCreateRequestCopyWithImpl(this._value, this._then);

  final SupportTicketCreateRequest _value;
  // ignore: unused_field
  final $Res Function(SupportTicketCreateRequest) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? title = freezed,
    Object? desc = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? userEmail = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      userEmail: userEmail == freezed
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_SupportTicketCreateRequestCopyWith<$Res>
    implements $SupportTicketCreateRequestCopyWith<$Res> {
  factory _$$_SupportTicketCreateRequestCopyWith(
          _$_SupportTicketCreateRequest value,
          $Res Function(_$_SupportTicketCreateRequest) then) =
      __$$_SupportTicketCreateRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name,
      String? title,
      String? desc,
      String? description,
      String? type,
      String? userEmail});
}

/// @nodoc
class __$$_SupportTicketCreateRequestCopyWithImpl<$Res>
    extends _$SupportTicketCreateRequestCopyWithImpl<$Res>
    implements _$$_SupportTicketCreateRequestCopyWith<$Res> {
  __$$_SupportTicketCreateRequestCopyWithImpl(
      _$_SupportTicketCreateRequest _value,
      $Res Function(_$_SupportTicketCreateRequest) _then)
      : super(_value, (v) => _then(v as _$_SupportTicketCreateRequest));

  @override
  _$_SupportTicketCreateRequest get _value =>
      super._value as _$_SupportTicketCreateRequest;

  @override
  $Res call({
    Object? name = freezed,
    Object? title = freezed,
    Object? desc = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? userEmail = freezed,
  }) {
    return _then(_$_SupportTicketCreateRequest(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      userEmail: userEmail == freezed
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SupportTicketCreateRequest implements _SupportTicketCreateRequest {
  const _$_SupportTicketCreateRequest(
      {this.name,
      this.title,
      this.desc,
      this.description,
      this.type,
      this.userEmail});

  factory _$_SupportTicketCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$$_SupportTicketCreateRequestFromJson(json);

  @override
  final String? name;
  @override
  final String? title;
  @override
  final String? desc;
  @override
  final String? description;
  @override
  final String? type;
  @override
  final String? userEmail;

  @override
  String toString() {
    return 'SupportTicketCreateRequest(name: $name, title: $title, desc: $desc, description: $description, type: $type, userEmail: $userEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SupportTicketCreateRequest &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.desc, desc) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.userEmail, userEmail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(desc),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(userEmail));

  @JsonKey(ignore: true)
  @override
  _$$_SupportTicketCreateRequestCopyWith<_$_SupportTicketCreateRequest>
      get copyWith => __$$_SupportTicketCreateRequestCopyWithImpl<
          _$_SupportTicketCreateRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SupportTicketCreateRequestToJson(this);
  }
}

abstract class _SupportTicketCreateRequest
    implements SupportTicketCreateRequest {
  const factory _SupportTicketCreateRequest(
      {final String? name,
      final String? title,
      final String? desc,
      final String? description,
      final String? type,
      final String? userEmail}) = _$_SupportTicketCreateRequest;

  factory _SupportTicketCreateRequest.fromJson(Map<String, dynamic> json) =
      _$_SupportTicketCreateRequest.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get desc => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  String? get userEmail => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SupportTicketCreateRequestCopyWith<_$_SupportTicketCreateRequest>
      get copyWith => throw _privateConstructorUsedError;
}
