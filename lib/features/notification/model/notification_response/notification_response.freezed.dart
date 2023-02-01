// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationResponse _$NotificationResponseFromJson(Map<String, dynamic> json) {
  return _NotificationResponse.fromJson(json);
}

/// @nodoc
mixin _$NotificationResponse {
  dynamic get success => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  NotificationPayload get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationResponseCopyWith<NotificationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationResponseCopyWith<$Res> {
  factory $NotificationResponseCopyWith(NotificationResponse value,
          $Res Function(NotificationResponse) then) =
      _$NotificationResponseCopyWithImpl<$Res>;
  $Res call(
      {dynamic success,
      String? status,
      String? message,
      NotificationPayload payload});

  $NotificationPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$NotificationResponseCopyWithImpl<$Res>
    implements $NotificationResponseCopyWith<$Res> {
  _$NotificationResponseCopyWithImpl(this._value, this._then);

  final NotificationResponse _value;
  // ignore: unused_field
  final $Res Function(NotificationResponse) _then;

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
              as NotificationPayload,
    ));
  }

  @override
  $NotificationPayloadCopyWith<$Res> get payload {
    return $NotificationPayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }
}

/// @nodoc
abstract class _$$_NotificationResponseCopyWith<$Res>
    implements $NotificationResponseCopyWith<$Res> {
  factory _$$_NotificationResponseCopyWith(_$_NotificationResponse value,
          $Res Function(_$_NotificationResponse) then) =
      __$$_NotificationResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic success,
      String? status,
      String? message,
      NotificationPayload payload});

  @override
  $NotificationPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$_NotificationResponseCopyWithImpl<$Res>
    extends _$NotificationResponseCopyWithImpl<$Res>
    implements _$$_NotificationResponseCopyWith<$Res> {
  __$$_NotificationResponseCopyWithImpl(_$_NotificationResponse _value,
      $Res Function(_$_NotificationResponse) _then)
      : super(_value, (v) => _then(v as _$_NotificationResponse));

  @override
  _$_NotificationResponse get _value => super._value as _$_NotificationResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? payload = freezed,
  }) {
    return _then(_$_NotificationResponse(
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
              as NotificationPayload,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationResponse implements _NotificationResponse {
  const _$_NotificationResponse(
      {this.success, this.status, this.message, required this.payload});

  factory _$_NotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationResponseFromJson(json);

  @override
  final dynamic success;
  @override
  final String? status;
  @override
  final String? message;
  @override
  final NotificationPayload payload;

  @override
  String toString() {
    return 'NotificationResponse(success: $success, status: $status, message: $message, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationResponse &&
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
  _$$_NotificationResponseCopyWith<_$_NotificationResponse> get copyWith =>
      __$$_NotificationResponseCopyWithImpl<_$_NotificationResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationResponseToJson(this);
  }
}

abstract class _NotificationResponse implements NotificationResponse {
  const factory _NotificationResponse(
      {final dynamic success,
      final String? status,
      final String? message,
      required final NotificationPayload payload}) = _$_NotificationResponse;

  factory _NotificationResponse.fromJson(Map<String, dynamic> json) =
      _$_NotificationResponse.fromJson;

  @override
  dynamic get success => throw _privateConstructorUsedError;
  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  NotificationPayload get payload => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationResponseCopyWith<_$_NotificationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationPayload _$NotificationPayloadFromJson(Map<String, dynamic> json) {
  return _NotificationPayload.fromJson(json);
}

/// @nodoc
mixin _$NotificationPayload {
  List<NotificationData> get content => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get totalElements => throw _privateConstructorUsedError;
  int get numberOfElements => throw _privateConstructorUsedError;
  bool get last => throw _privateConstructorUsedError;
  bool get first => throw _privateConstructorUsedError;
  bool get empty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationPayloadCopyWith<NotificationPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationPayloadCopyWith<$Res> {
  factory $NotificationPayloadCopyWith(
          NotificationPayload value, $Res Function(NotificationPayload) then) =
      _$NotificationPayloadCopyWithImpl<$Res>;
  $Res call(
      {List<NotificationData> content,
      int totalPages,
      int totalElements,
      int numberOfElements,
      bool last,
      bool first,
      bool empty});
}

/// @nodoc
class _$NotificationPayloadCopyWithImpl<$Res>
    implements $NotificationPayloadCopyWith<$Res> {
  _$NotificationPayloadCopyWithImpl(this._value, this._then);

  final NotificationPayload _value;
  // ignore: unused_field
  final $Res Function(NotificationPayload) _then;

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
              as List<NotificationData>,
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
abstract class _$$_NotificationPayloadCopyWith<$Res>
    implements $NotificationPayloadCopyWith<$Res> {
  factory _$$_NotificationPayloadCopyWith(_$_NotificationPayload value,
          $Res Function(_$_NotificationPayload) then) =
      __$$_NotificationPayloadCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<NotificationData> content,
      int totalPages,
      int totalElements,
      int numberOfElements,
      bool last,
      bool first,
      bool empty});
}

/// @nodoc
class __$$_NotificationPayloadCopyWithImpl<$Res>
    extends _$NotificationPayloadCopyWithImpl<$Res>
    implements _$$_NotificationPayloadCopyWith<$Res> {
  __$$_NotificationPayloadCopyWithImpl(_$_NotificationPayload _value,
      $Res Function(_$_NotificationPayload) _then)
      : super(_value, (v) => _then(v as _$_NotificationPayload));

  @override
  _$_NotificationPayload get _value => super._value as _$_NotificationPayload;

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
    return _then(_$_NotificationPayload(
      content: content == freezed
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<NotificationData>,
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
class _$_NotificationPayload implements _NotificationPayload {
  const _$_NotificationPayload(
      {final List<NotificationData> content = const [],
      required this.totalPages,
      required this.totalElements,
      required this.numberOfElements,
      required this.last,
      required this.first,
      required this.empty})
      : _content = content;

  factory _$_NotificationPayload.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationPayloadFromJson(json);

  final List<NotificationData> _content;
  @override
  @JsonKey()
  List<NotificationData> get content {
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
    return 'NotificationPayload(content: $content, totalPages: $totalPages, totalElements: $totalElements, numberOfElements: $numberOfElements, last: $last, first: $first, empty: $empty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationPayload &&
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
  _$$_NotificationPayloadCopyWith<_$_NotificationPayload> get copyWith =>
      __$$_NotificationPayloadCopyWithImpl<_$_NotificationPayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationPayloadToJson(this);
  }
}

abstract class _NotificationPayload implements NotificationPayload {
  const factory _NotificationPayload(
      {final List<NotificationData> content,
      required final int totalPages,
      required final int totalElements,
      required final int numberOfElements,
      required final bool last,
      required final bool first,
      required final bool empty}) = _$_NotificationPayload;

  factory _NotificationPayload.fromJson(Map<String, dynamic> json) =
      _$_NotificationPayload.fromJson;

  @override
  List<NotificationData> get content => throw _privateConstructorUsedError;
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
  _$$_NotificationPayloadCopyWith<_$_NotificationPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
