// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'policy_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PolicyResponse _$PolicyResponseFromJson(Map<String, dynamic> json) {
  return _PolicyResponse.fromJson(json);
}

/// @nodoc
mixin _$PolicyResponse {
  dynamic get success => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  PolicyPayload get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PolicyResponseCopyWith<PolicyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PolicyResponseCopyWith<$Res> {
  factory $PolicyResponseCopyWith(
          PolicyResponse value, $Res Function(PolicyResponse) then) =
      _$PolicyResponseCopyWithImpl<$Res>;
  $Res call(
      {dynamic success,
      String? status,
      String? message,
      PolicyPayload payload});

  $PolicyPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$PolicyResponseCopyWithImpl<$Res>
    implements $PolicyResponseCopyWith<$Res> {
  _$PolicyResponseCopyWithImpl(this._value, this._then);

  final PolicyResponse _value;
  // ignore: unused_field
  final $Res Function(PolicyResponse) _then;

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
              as PolicyPayload,
    ));
  }

  @override
  $PolicyPayloadCopyWith<$Res> get payload {
    return $PolicyPayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }
}

/// @nodoc
abstract class _$$_PolicyResponseCopyWith<$Res>
    implements $PolicyResponseCopyWith<$Res> {
  factory _$$_PolicyResponseCopyWith(
          _$_PolicyResponse value, $Res Function(_$_PolicyResponse) then) =
      __$$_PolicyResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic success,
      String? status,
      String? message,
      PolicyPayload payload});

  @override
  $PolicyPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$_PolicyResponseCopyWithImpl<$Res>
    extends _$PolicyResponseCopyWithImpl<$Res>
    implements _$$_PolicyResponseCopyWith<$Res> {
  __$$_PolicyResponseCopyWithImpl(
      _$_PolicyResponse _value, $Res Function(_$_PolicyResponse) _then)
      : super(_value, (v) => _then(v as _$_PolicyResponse));

  @override
  _$_PolicyResponse get _value => super._value as _$_PolicyResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? payload = freezed,
  }) {
    return _then(_$_PolicyResponse(
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
              as PolicyPayload,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PolicyResponse implements _PolicyResponse {
  const _$_PolicyResponse(
      {this.success, this.status, this.message, required this.payload});

  factory _$_PolicyResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PolicyResponseFromJson(json);

  @override
  final dynamic success;
  @override
  final String? status;
  @override
  final String? message;
  @override
  final PolicyPayload payload;

  @override
  String toString() {
    return 'PolicyResponse(success: $success, status: $status, message: $message, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PolicyResponse &&
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
  _$$_PolicyResponseCopyWith<_$_PolicyResponse> get copyWith =>
      __$$_PolicyResponseCopyWithImpl<_$_PolicyResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PolicyResponseToJson(this);
  }
}

abstract class _PolicyResponse implements PolicyResponse {
  const factory _PolicyResponse(
      {final dynamic success,
      final String? status,
      final String? message,
      required final PolicyPayload payload}) = _$_PolicyResponse;

  factory _PolicyResponse.fromJson(Map<String, dynamic> json) =
      _$_PolicyResponse.fromJson;

  @override
  dynamic get success => throw _privateConstructorUsedError;
  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  PolicyPayload get payload => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PolicyResponseCopyWith<_$_PolicyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

PolicyPayload _$PolicyPayloadFromJson(Map<String, dynamic> json) {
  return _PolicyPayload.fromJson(json);
}

/// @nodoc
mixin _$PolicyPayload {
  List<Policy> get content => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get totalElements => throw _privateConstructorUsedError;
  int get numberOfElements => throw _privateConstructorUsedError;
  bool get last => throw _privateConstructorUsedError;
  bool get first => throw _privateConstructorUsedError;
  bool get empty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PolicyPayloadCopyWith<PolicyPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PolicyPayloadCopyWith<$Res> {
  factory $PolicyPayloadCopyWith(
          PolicyPayload value, $Res Function(PolicyPayload) then) =
      _$PolicyPayloadCopyWithImpl<$Res>;
  $Res call(
      {List<Policy> content,
      int totalPages,
      int totalElements,
      int numberOfElements,
      bool last,
      bool first,
      bool empty});
}

/// @nodoc
class _$PolicyPayloadCopyWithImpl<$Res>
    implements $PolicyPayloadCopyWith<$Res> {
  _$PolicyPayloadCopyWithImpl(this._value, this._then);

  final PolicyPayload _value;
  // ignore: unused_field
  final $Res Function(PolicyPayload) _then;

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
              as List<Policy>,
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
abstract class _$$_PolicyPayloadCopyWith<$Res>
    implements $PolicyPayloadCopyWith<$Res> {
  factory _$$_PolicyPayloadCopyWith(
          _$_PolicyPayload value, $Res Function(_$_PolicyPayload) then) =
      __$$_PolicyPayloadCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Policy> content,
      int totalPages,
      int totalElements,
      int numberOfElements,
      bool last,
      bool first,
      bool empty});
}

/// @nodoc
class __$$_PolicyPayloadCopyWithImpl<$Res>
    extends _$PolicyPayloadCopyWithImpl<$Res>
    implements _$$_PolicyPayloadCopyWith<$Res> {
  __$$_PolicyPayloadCopyWithImpl(
      _$_PolicyPayload _value, $Res Function(_$_PolicyPayload) _then)
      : super(_value, (v) => _then(v as _$_PolicyPayload));

  @override
  _$_PolicyPayload get _value => super._value as _$_PolicyPayload;

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
    return _then(_$_PolicyPayload(
      content: content == freezed
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<Policy>,
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
class _$_PolicyPayload implements _PolicyPayload {
  const _$_PolicyPayload(
      {final List<Policy> content = const [],
      required this.totalPages,
      required this.totalElements,
      required this.numberOfElements,
      required this.last,
      required this.first,
      required this.empty})
      : _content = content;

  factory _$_PolicyPayload.fromJson(Map<String, dynamic> json) =>
      _$$_PolicyPayloadFromJson(json);

  final List<Policy> _content;
  @override
  @JsonKey()
  List<Policy> get content {
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
    return 'PolicyPayload(content: $content, totalPages: $totalPages, totalElements: $totalElements, numberOfElements: $numberOfElements, last: $last, first: $first, empty: $empty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PolicyPayload &&
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
  _$$_PolicyPayloadCopyWith<_$_PolicyPayload> get copyWith =>
      __$$_PolicyPayloadCopyWithImpl<_$_PolicyPayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PolicyPayloadToJson(this);
  }
}

abstract class _PolicyPayload implements PolicyPayload {
  const factory _PolicyPayload(
      {final List<Policy> content,
      required final int totalPages,
      required final int totalElements,
      required final int numberOfElements,
      required final bool last,
      required final bool first,
      required final bool empty}) = _$_PolicyPayload;

  factory _PolicyPayload.fromJson(Map<String, dynamic> json) =
      _$_PolicyPayload.fromJson;

  @override
  List<Policy> get content => throw _privateConstructorUsedError;
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
  _$$_PolicyPayloadCopyWith<_$_PolicyPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
