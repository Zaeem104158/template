// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'opportunity_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OpportunityResponse _$OpportunityResponseFromJson(Map<String, dynamic> json) {
  return _OpportunityResponse.fromJson(json);
}

/// @nodoc
mixin _$OpportunityResponse {
  dynamic get success => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  OpportunityPayload get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpportunityResponseCopyWith<OpportunityResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpportunityResponseCopyWith<$Res> {
  factory $OpportunityResponseCopyWith(
          OpportunityResponse value, $Res Function(OpportunityResponse) then) =
      _$OpportunityResponseCopyWithImpl<$Res>;
  $Res call(
      {dynamic success,
      String? status,
      String? message,
      OpportunityPayload payload});

  $OpportunityPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$OpportunityResponseCopyWithImpl<$Res>
    implements $OpportunityResponseCopyWith<$Res> {
  _$OpportunityResponseCopyWithImpl(this._value, this._then);

  final OpportunityResponse _value;
  // ignore: unused_field
  final $Res Function(OpportunityResponse) _then;

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
              as OpportunityPayload,
    ));
  }

  @override
  $OpportunityPayloadCopyWith<$Res> get payload {
    return $OpportunityPayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }
}

/// @nodoc
abstract class _$$_OpportunityResponseCopyWith<$Res>
    implements $OpportunityResponseCopyWith<$Res> {
  factory _$$_OpportunityResponseCopyWith(_$_OpportunityResponse value,
          $Res Function(_$_OpportunityResponse) then) =
      __$$_OpportunityResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic success,
      String? status,
      String? message,
      OpportunityPayload payload});

  @override
  $OpportunityPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$_OpportunityResponseCopyWithImpl<$Res>
    extends _$OpportunityResponseCopyWithImpl<$Res>
    implements _$$_OpportunityResponseCopyWith<$Res> {
  __$$_OpportunityResponseCopyWithImpl(_$_OpportunityResponse _value,
      $Res Function(_$_OpportunityResponse) _then)
      : super(_value, (v) => _then(v as _$_OpportunityResponse));

  @override
  _$_OpportunityResponse get _value => super._value as _$_OpportunityResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? payload = freezed,
  }) {
    return _then(_$_OpportunityResponse(
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
              as OpportunityPayload,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpportunityResponse implements _OpportunityResponse {
  const _$_OpportunityResponse(
      {this.success, this.status, this.message, required this.payload});

  factory _$_OpportunityResponse.fromJson(Map<String, dynamic> json) =>
      _$$_OpportunityResponseFromJson(json);

  @override
  final dynamic success;
  @override
  final String? status;
  @override
  final String? message;
  @override
  final OpportunityPayload payload;

  @override
  String toString() {
    return 'OpportunityResponse(success: $success, status: $status, message: $message, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpportunityResponse &&
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
  _$$_OpportunityResponseCopyWith<_$_OpportunityResponse> get copyWith =>
      __$$_OpportunityResponseCopyWithImpl<_$_OpportunityResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpportunityResponseToJson(this);
  }
}

abstract class _OpportunityResponse implements OpportunityResponse {
  const factory _OpportunityResponse(
      {final dynamic success,
      final String? status,
      final String? message,
      required final OpportunityPayload payload}) = _$_OpportunityResponse;

  factory _OpportunityResponse.fromJson(Map<String, dynamic> json) =
      _$_OpportunityResponse.fromJson;

  @override
  dynamic get success => throw _privateConstructorUsedError;
  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  OpportunityPayload get payload => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OpportunityResponseCopyWith<_$_OpportunityResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

OpportunityPayload _$OpportunityPayloadFromJson(Map<String, dynamic> json) {
  return _OpportunityPayload.fromJson(json);
}

/// @nodoc
mixin _$OpportunityPayload {
  List<Opportunity> get content => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get totalElements => throw _privateConstructorUsedError;
  int get numberOfElements => throw _privateConstructorUsedError;
  bool get last => throw _privateConstructorUsedError;
  bool get first => throw _privateConstructorUsedError;
  bool get empty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpportunityPayloadCopyWith<OpportunityPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpportunityPayloadCopyWith<$Res> {
  factory $OpportunityPayloadCopyWith(
          OpportunityPayload value, $Res Function(OpportunityPayload) then) =
      _$OpportunityPayloadCopyWithImpl<$Res>;
  $Res call(
      {List<Opportunity> content,
      int totalPages,
      int totalElements,
      int numberOfElements,
      bool last,
      bool first,
      bool empty});
}

/// @nodoc
class _$OpportunityPayloadCopyWithImpl<$Res>
    implements $OpportunityPayloadCopyWith<$Res> {
  _$OpportunityPayloadCopyWithImpl(this._value, this._then);

  final OpportunityPayload _value;
  // ignore: unused_field
  final $Res Function(OpportunityPayload) _then;

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
              as List<Opportunity>,
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
abstract class _$$_OpportunityPayloadCopyWith<$Res>
    implements $OpportunityPayloadCopyWith<$Res> {
  factory _$$_OpportunityPayloadCopyWith(_$_OpportunityPayload value,
          $Res Function(_$_OpportunityPayload) then) =
      __$$_OpportunityPayloadCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Opportunity> content,
      int totalPages,
      int totalElements,
      int numberOfElements,
      bool last,
      bool first,
      bool empty});
}

/// @nodoc
class __$$_OpportunityPayloadCopyWithImpl<$Res>
    extends _$OpportunityPayloadCopyWithImpl<$Res>
    implements _$$_OpportunityPayloadCopyWith<$Res> {
  __$$_OpportunityPayloadCopyWithImpl(
      _$_OpportunityPayload _value, $Res Function(_$_OpportunityPayload) _then)
      : super(_value, (v) => _then(v as _$_OpportunityPayload));

  @override
  _$_OpportunityPayload get _value => super._value as _$_OpportunityPayload;

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
    return _then(_$_OpportunityPayload(
      content: content == freezed
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<Opportunity>,
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
class _$_OpportunityPayload implements _OpportunityPayload {
  const _$_OpportunityPayload(
      {final List<Opportunity> content = const [],
      required this.totalPages,
      required this.totalElements,
      required this.numberOfElements,
      required this.last,
      required this.first,
      required this.empty})
      : _content = content;

  factory _$_OpportunityPayload.fromJson(Map<String, dynamic> json) =>
      _$$_OpportunityPayloadFromJson(json);

  final List<Opportunity> _content;
  @override
  @JsonKey()
  List<Opportunity> get content {
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
    return 'OpportunityPayload(content: $content, totalPages: $totalPages, totalElements: $totalElements, numberOfElements: $numberOfElements, last: $last, first: $first, empty: $empty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpportunityPayload &&
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
  _$$_OpportunityPayloadCopyWith<_$_OpportunityPayload> get copyWith =>
      __$$_OpportunityPayloadCopyWithImpl<_$_OpportunityPayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpportunityPayloadToJson(this);
  }
}

abstract class _OpportunityPayload implements OpportunityPayload {
  const factory _OpportunityPayload(
      {final List<Opportunity> content,
      required final int totalPages,
      required final int totalElements,
      required final int numberOfElements,
      required final bool last,
      required final bool first,
      required final bool empty}) = _$_OpportunityPayload;

  factory _OpportunityPayload.fromJson(Map<String, dynamic> json) =
      _$_OpportunityPayload.fromJson;

  @override
  List<Opportunity> get content => throw _privateConstructorUsedError;
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
  _$$_OpportunityPayloadCopyWith<_$_OpportunityPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
