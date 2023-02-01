// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'doc_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DocResponse _$DocResponseFromJson(Map<String, dynamic> json) {
  return _DocResponse.fromJson(json);
}

/// @nodoc
mixin _$DocResponse {
  dynamic get success => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  DocPayload get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocResponseCopyWith<DocResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocResponseCopyWith<$Res> {
  factory $DocResponseCopyWith(
          DocResponse value, $Res Function(DocResponse) then) =
      _$DocResponseCopyWithImpl<$Res>;
  $Res call(
      {dynamic success, String? status, String? message, DocPayload payload});

  $DocPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$DocResponseCopyWithImpl<$Res> implements $DocResponseCopyWith<$Res> {
  _$DocResponseCopyWithImpl(this._value, this._then);

  final DocResponse _value;
  // ignore: unused_field
  final $Res Function(DocResponse) _then;

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
              as DocPayload,
    ));
  }

  @override
  $DocPayloadCopyWith<$Res> get payload {
    return $DocPayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }
}

/// @nodoc
abstract class _$$_DocResponseCopyWith<$Res>
    implements $DocResponseCopyWith<$Res> {
  factory _$$_DocResponseCopyWith(
          _$_DocResponse value, $Res Function(_$_DocResponse) then) =
      __$$_DocResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic success, String? status, String? message, DocPayload payload});

  @override
  $DocPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$_DocResponseCopyWithImpl<$Res> extends _$DocResponseCopyWithImpl<$Res>
    implements _$$_DocResponseCopyWith<$Res> {
  __$$_DocResponseCopyWithImpl(
      _$_DocResponse _value, $Res Function(_$_DocResponse) _then)
      : super(_value, (v) => _then(v as _$_DocResponse));

  @override
  _$_DocResponse get _value => super._value as _$_DocResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? payload = freezed,
  }) {
    return _then(_$_DocResponse(
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
              as DocPayload,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DocResponse implements _DocResponse {
  const _$_DocResponse(
      {this.success, this.status, this.message, required this.payload});

  factory _$_DocResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DocResponseFromJson(json);

  @override
  final dynamic success;
  @override
  final String? status;
  @override
  final String? message;
  @override
  final DocPayload payload;

  @override
  String toString() {
    return 'DocResponse(success: $success, status: $status, message: $message, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DocResponse &&
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
  _$$_DocResponseCopyWith<_$_DocResponse> get copyWith =>
      __$$_DocResponseCopyWithImpl<_$_DocResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DocResponseToJson(this);
  }
}

abstract class _DocResponse implements DocResponse {
  const factory _DocResponse(
      {final dynamic success,
      final String? status,
      final String? message,
      required final DocPayload payload}) = _$_DocResponse;

  factory _DocResponse.fromJson(Map<String, dynamic> json) =
      _$_DocResponse.fromJson;

  @override
  dynamic get success => throw _privateConstructorUsedError;
  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  DocPayload get payload => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DocResponseCopyWith<_$_DocResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

DocPayload _$DocPayloadFromJson(Map<String, dynamic> json) {
  return _DocPayload.fromJson(json);
}

/// @nodoc
mixin _$DocPayload {
  List<Doc> get content => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get totalElements => throw _privateConstructorUsedError;
  int get numberOfElements => throw _privateConstructorUsedError;
  bool get last => throw _privateConstructorUsedError;
  bool get first => throw _privateConstructorUsedError;
  bool get empty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocPayloadCopyWith<DocPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocPayloadCopyWith<$Res> {
  factory $DocPayloadCopyWith(
          DocPayload value, $Res Function(DocPayload) then) =
      _$DocPayloadCopyWithImpl<$Res>;
  $Res call(
      {List<Doc> content,
      int totalPages,
      int totalElements,
      int numberOfElements,
      bool last,
      bool first,
      bool empty});
}

/// @nodoc
class _$DocPayloadCopyWithImpl<$Res> implements $DocPayloadCopyWith<$Res> {
  _$DocPayloadCopyWithImpl(this._value, this._then);

  final DocPayload _value;
  // ignore: unused_field
  final $Res Function(DocPayload) _then;

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
              as List<Doc>,
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
abstract class _$$_DocPayloadCopyWith<$Res>
    implements $DocPayloadCopyWith<$Res> {
  factory _$$_DocPayloadCopyWith(
          _$_DocPayload value, $Res Function(_$_DocPayload) then) =
      __$$_DocPayloadCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Doc> content,
      int totalPages,
      int totalElements,
      int numberOfElements,
      bool last,
      bool first,
      bool empty});
}

/// @nodoc
class __$$_DocPayloadCopyWithImpl<$Res> extends _$DocPayloadCopyWithImpl<$Res>
    implements _$$_DocPayloadCopyWith<$Res> {
  __$$_DocPayloadCopyWithImpl(
      _$_DocPayload _value, $Res Function(_$_DocPayload) _then)
      : super(_value, (v) => _then(v as _$_DocPayload));

  @override
  _$_DocPayload get _value => super._value as _$_DocPayload;

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
    return _then(_$_DocPayload(
      content: content == freezed
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<Doc>,
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
class _$_DocPayload implements _DocPayload {
  const _$_DocPayload(
      {final List<Doc> content = const [],
      required this.totalPages,
      required this.totalElements,
      required this.numberOfElements,
      required this.last,
      required this.first,
      required this.empty})
      : _content = content;

  factory _$_DocPayload.fromJson(Map<String, dynamic> json) =>
      _$$_DocPayloadFromJson(json);

  final List<Doc> _content;
  @override
  @JsonKey()
  List<Doc> get content {
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
    return 'DocPayload(content: $content, totalPages: $totalPages, totalElements: $totalElements, numberOfElements: $numberOfElements, last: $last, first: $first, empty: $empty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DocPayload &&
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
  _$$_DocPayloadCopyWith<_$_DocPayload> get copyWith =>
      __$$_DocPayloadCopyWithImpl<_$_DocPayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DocPayloadToJson(this);
  }
}

abstract class _DocPayload implements DocPayload {
  const factory _DocPayload(
      {final List<Doc> content,
      required final int totalPages,
      required final int totalElements,
      required final int numberOfElements,
      required final bool last,
      required final bool first,
      required final bool empty}) = _$_DocPayload;

  factory _DocPayload.fromJson(Map<String, dynamic> json) =
      _$_DocPayload.fromJson;

  @override
  List<Doc> get content => throw _privateConstructorUsedError;
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
  _$$_DocPayloadCopyWith<_$_DocPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
