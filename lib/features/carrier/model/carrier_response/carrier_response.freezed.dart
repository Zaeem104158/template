// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'carrier_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CarrierResponse _$CarrierResponseFromJson(Map<String, dynamic> json) {
  return _CarrierResponse.fromJson(json);
}

/// @nodoc
mixin _$CarrierResponse {
  dynamic get success => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  CarrierPayload get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarrierResponseCopyWith<CarrierResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarrierResponseCopyWith<$Res> {
  factory $CarrierResponseCopyWith(
          CarrierResponse value, $Res Function(CarrierResponse) then) =
      _$CarrierResponseCopyWithImpl<$Res>;
  $Res call(
      {dynamic success,
      String? status,
      String? message,
      CarrierPayload payload});

  $CarrierPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$CarrierResponseCopyWithImpl<$Res>
    implements $CarrierResponseCopyWith<$Res> {
  _$CarrierResponseCopyWithImpl(this._value, this._then);

  final CarrierResponse _value;
  // ignore: unused_field
  final $Res Function(CarrierResponse) _then;

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
              as CarrierPayload,
    ));
  }

  @override
  $CarrierPayloadCopyWith<$Res> get payload {
    return $CarrierPayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }
}

/// @nodoc
abstract class _$$_CarrierResponseCopyWith<$Res>
    implements $CarrierResponseCopyWith<$Res> {
  factory _$$_CarrierResponseCopyWith(
          _$_CarrierResponse value, $Res Function(_$_CarrierResponse) then) =
      __$$_CarrierResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic success,
      String? status,
      String? message,
      CarrierPayload payload});

  @override
  $CarrierPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$_CarrierResponseCopyWithImpl<$Res>
    extends _$CarrierResponseCopyWithImpl<$Res>
    implements _$$_CarrierResponseCopyWith<$Res> {
  __$$_CarrierResponseCopyWithImpl(
      _$_CarrierResponse _value, $Res Function(_$_CarrierResponse) _then)
      : super(_value, (v) => _then(v as _$_CarrierResponse));

  @override
  _$_CarrierResponse get _value => super._value as _$_CarrierResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? payload = freezed,
  }) {
    return _then(_$_CarrierResponse(
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
              as CarrierPayload,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CarrierResponse implements _CarrierResponse {
  const _$_CarrierResponse(
      {this.success, this.status, this.message, required this.payload});

  factory _$_CarrierResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CarrierResponseFromJson(json);

  @override
  final dynamic success;
  @override
  final String? status;
  @override
  final String? message;
  @override
  final CarrierPayload payload;

  @override
  String toString() {
    return 'CarrierResponse(success: $success, status: $status, message: $message, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarrierResponse &&
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
  _$$_CarrierResponseCopyWith<_$_CarrierResponse> get copyWith =>
      __$$_CarrierResponseCopyWithImpl<_$_CarrierResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarrierResponseToJson(this);
  }
}

abstract class _CarrierResponse implements CarrierResponse {
  const factory _CarrierResponse(
      {final dynamic success,
      final String? status,
      final String? message,
      required final CarrierPayload payload}) = _$_CarrierResponse;

  factory _CarrierResponse.fromJson(Map<String, dynamic> json) =
      _$_CarrierResponse.fromJson;

  @override
  dynamic get success => throw _privateConstructorUsedError;
  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  CarrierPayload get payload => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CarrierResponseCopyWith<_$_CarrierResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

CarrierPayload _$CarrierPayloadFromJson(Map<String, dynamic> json) {
  return _CarrierPayload.fromJson(json);
}

/// @nodoc
mixin _$CarrierPayload {
  List<Carrier> get content => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get totalElements => throw _privateConstructorUsedError;
  int get numberOfElements => throw _privateConstructorUsedError;
  bool get last => throw _privateConstructorUsedError;
  bool get first => throw _privateConstructorUsedError;
  bool get empty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarrierPayloadCopyWith<CarrierPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarrierPayloadCopyWith<$Res> {
  factory $CarrierPayloadCopyWith(
          CarrierPayload value, $Res Function(CarrierPayload) then) =
      _$CarrierPayloadCopyWithImpl<$Res>;
  $Res call(
      {List<Carrier> content,
      int totalPages,
      int totalElements,
      int numberOfElements,
      bool last,
      bool first,
      bool empty});
}

/// @nodoc
class _$CarrierPayloadCopyWithImpl<$Res>
    implements $CarrierPayloadCopyWith<$Res> {
  _$CarrierPayloadCopyWithImpl(this._value, this._then);

  final CarrierPayload _value;
  // ignore: unused_field
  final $Res Function(CarrierPayload) _then;

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
              as List<Carrier>,
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
abstract class _$$_CarrierPayloadCopyWith<$Res>
    implements $CarrierPayloadCopyWith<$Res> {
  factory _$$_CarrierPayloadCopyWith(
          _$_CarrierPayload value, $Res Function(_$_CarrierPayload) then) =
      __$$_CarrierPayloadCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Carrier> content,
      int totalPages,
      int totalElements,
      int numberOfElements,
      bool last,
      bool first,
      bool empty});
}

/// @nodoc
class __$$_CarrierPayloadCopyWithImpl<$Res>
    extends _$CarrierPayloadCopyWithImpl<$Res>
    implements _$$_CarrierPayloadCopyWith<$Res> {
  __$$_CarrierPayloadCopyWithImpl(
      _$_CarrierPayload _value, $Res Function(_$_CarrierPayload) _then)
      : super(_value, (v) => _then(v as _$_CarrierPayload));

  @override
  _$_CarrierPayload get _value => super._value as _$_CarrierPayload;

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
    return _then(_$_CarrierPayload(
      content: content == freezed
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<Carrier>,
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
class _$_CarrierPayload implements _CarrierPayload {
  const _$_CarrierPayload(
      {final List<Carrier> content = const [],
      required this.totalPages,
      required this.totalElements,
      required this.numberOfElements,
      required this.last,
      required this.first,
      required this.empty})
      : _content = content;

  factory _$_CarrierPayload.fromJson(Map<String, dynamic> json) =>
      _$$_CarrierPayloadFromJson(json);

  final List<Carrier> _content;
  @override
  @JsonKey()
  List<Carrier> get content {
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
    return 'CarrierPayload(content: $content, totalPages: $totalPages, totalElements: $totalElements, numberOfElements: $numberOfElements, last: $last, first: $first, empty: $empty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarrierPayload &&
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
  _$$_CarrierPayloadCopyWith<_$_CarrierPayload> get copyWith =>
      __$$_CarrierPayloadCopyWithImpl<_$_CarrierPayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarrierPayloadToJson(this);
  }
}

abstract class _CarrierPayload implements CarrierPayload {
  const factory _CarrierPayload(
      {final List<Carrier> content,
      required final int totalPages,
      required final int totalElements,
      required final int numberOfElements,
      required final bool last,
      required final bool first,
      required final bool empty}) = _$_CarrierPayload;

  factory _CarrierPayload.fromJson(Map<String, dynamic> json) =
      _$_CarrierPayload.fromJson;

  @override
  List<Carrier> get content => throw _privateConstructorUsedError;
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
  _$$_CarrierPayloadCopyWith<_$_CarrierPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
