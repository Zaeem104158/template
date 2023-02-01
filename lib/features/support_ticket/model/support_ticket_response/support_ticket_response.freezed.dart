// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'support_ticket_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SupportTicketResponse _$SupportTicketResponseFromJson(
    Map<String, dynamic> json) {
  return _SupportTicketResponse.fromJson(json);
}

/// @nodoc
mixin _$SupportTicketResponse {
  dynamic get success => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isImageUploading => throw _privateConstructorUsedError;
  SupportTicketPayload get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupportTicketResponseCopyWith<SupportTicketResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportTicketResponseCopyWith<$Res> {
  factory $SupportTicketResponseCopyWith(SupportTicketResponse value,
          $Res Function(SupportTicketResponse) then) =
      _$SupportTicketResponseCopyWithImpl<$Res>;
  $Res call(
      {dynamic success,
      String? status,
      String? message,
      bool isLoading,
      bool isImageUploading,
      SupportTicketPayload payload});

  $SupportTicketPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$SupportTicketResponseCopyWithImpl<$Res>
    implements $SupportTicketResponseCopyWith<$Res> {
  _$SupportTicketResponseCopyWithImpl(this._value, this._then);

  final SupportTicketResponse _value;
  // ignore: unused_field
  final $Res Function(SupportTicketResponse) _then;

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
              as SupportTicketPayload,
    ));
  }

  @override
  $SupportTicketPayloadCopyWith<$Res> get payload {
    return $SupportTicketPayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }
}

/// @nodoc
abstract class _$$_SupportTicketResponseCopyWith<$Res>
    implements $SupportTicketResponseCopyWith<$Res> {
  factory _$$_SupportTicketResponseCopyWith(_$_SupportTicketResponse value,
          $Res Function(_$_SupportTicketResponse) then) =
      __$$_SupportTicketResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic success,
      String? status,
      String? message,
      bool isLoading,
      bool isImageUploading,
      SupportTicketPayload payload});

  @override
  $SupportTicketPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$_SupportTicketResponseCopyWithImpl<$Res>
    extends _$SupportTicketResponseCopyWithImpl<$Res>
    implements _$$_SupportTicketResponseCopyWith<$Res> {
  __$$_SupportTicketResponseCopyWithImpl(_$_SupportTicketResponse _value,
      $Res Function(_$_SupportTicketResponse) _then)
      : super(_value, (v) => _then(v as _$_SupportTicketResponse));

  @override
  _$_SupportTicketResponse get _value =>
      super._value as _$_SupportTicketResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? isLoading = freezed,
    Object? isImageUploading = freezed,
    Object? payload = freezed,
  }) {
    return _then(_$_SupportTicketResponse(
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
              as SupportTicketPayload,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SupportTicketResponse implements _SupportTicketResponse {
  const _$_SupportTicketResponse(
      {this.success,
      this.status,
      this.message,
      this.isLoading = false,
      this.isImageUploading = false,
      required this.payload});

  factory _$_SupportTicketResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SupportTicketResponseFromJson(json);

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
  final SupportTicketPayload payload;

  @override
  String toString() {
    return 'SupportTicketResponse(success: $success, status: $status, message: $message, isLoading: $isLoading, isImageUploading: $isImageUploading, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SupportTicketResponse &&
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
  _$$_SupportTicketResponseCopyWith<_$_SupportTicketResponse> get copyWith =>
      __$$_SupportTicketResponseCopyWithImpl<_$_SupportTicketResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SupportTicketResponseToJson(this);
  }
}

abstract class _SupportTicketResponse implements SupportTicketResponse {
  const factory _SupportTicketResponse(
      {final dynamic success,
      final String? status,
      final String? message,
      final bool isLoading,
      final bool isImageUploading,
      required final SupportTicketPayload payload}) = _$_SupportTicketResponse;

  factory _SupportTicketResponse.fromJson(Map<String, dynamic> json) =
      _$_SupportTicketResponse.fromJson;

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
  SupportTicketPayload get payload => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SupportTicketResponseCopyWith<_$_SupportTicketResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

SupportTicketPayload _$SupportTicketPayloadFromJson(Map<String, dynamic> json) {
  return _SupportTicketPayload.fromJson(json);
}

/// @nodoc
mixin _$SupportTicketPayload {
  List<SupportTicket> get content => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get totalElements => throw _privateConstructorUsedError;
  int get numberOfElements => throw _privateConstructorUsedError;
  bool get last => throw _privateConstructorUsedError;
  bool get first => throw _privateConstructorUsedError;
  bool get empty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupportTicketPayloadCopyWith<SupportTicketPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportTicketPayloadCopyWith<$Res> {
  factory $SupportTicketPayloadCopyWith(SupportTicketPayload value,
          $Res Function(SupportTicketPayload) then) =
      _$SupportTicketPayloadCopyWithImpl<$Res>;
  $Res call(
      {List<SupportTicket> content,
      int totalPages,
      int totalElements,
      int numberOfElements,
      bool last,
      bool first,
      bool empty});
}

/// @nodoc
class _$SupportTicketPayloadCopyWithImpl<$Res>
    implements $SupportTicketPayloadCopyWith<$Res> {
  _$SupportTicketPayloadCopyWithImpl(this._value, this._then);

  final SupportTicketPayload _value;
  // ignore: unused_field
  final $Res Function(SupportTicketPayload) _then;

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
              as List<SupportTicket>,
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
abstract class _$$_SupportTicketPayloadCopyWith<$Res>
    implements $SupportTicketPayloadCopyWith<$Res> {
  factory _$$_SupportTicketPayloadCopyWith(_$_SupportTicketPayload value,
          $Res Function(_$_SupportTicketPayload) then) =
      __$$_SupportTicketPayloadCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<SupportTicket> content,
      int totalPages,
      int totalElements,
      int numberOfElements,
      bool last,
      bool first,
      bool empty});
}

/// @nodoc
class __$$_SupportTicketPayloadCopyWithImpl<$Res>
    extends _$SupportTicketPayloadCopyWithImpl<$Res>
    implements _$$_SupportTicketPayloadCopyWith<$Res> {
  __$$_SupportTicketPayloadCopyWithImpl(_$_SupportTicketPayload _value,
      $Res Function(_$_SupportTicketPayload) _then)
      : super(_value, (v) => _then(v as _$_SupportTicketPayload));

  @override
  _$_SupportTicketPayload get _value => super._value as _$_SupportTicketPayload;

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
    return _then(_$_SupportTicketPayload(
      content: content == freezed
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<SupportTicket>,
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
class _$_SupportTicketPayload implements _SupportTicketPayload {
  const _$_SupportTicketPayload(
      {final List<SupportTicket> content = const [],
      required this.totalPages,
      required this.totalElements,
      required this.numberOfElements,
      required this.last,
      required this.first,
      required this.empty})
      : _content = content;

  factory _$_SupportTicketPayload.fromJson(Map<String, dynamic> json) =>
      _$$_SupportTicketPayloadFromJson(json);

  final List<SupportTicket> _content;
  @override
  @JsonKey()
  List<SupportTicket> get content {
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
    return 'SupportTicketPayload(content: $content, totalPages: $totalPages, totalElements: $totalElements, numberOfElements: $numberOfElements, last: $last, first: $first, empty: $empty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SupportTicketPayload &&
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
  _$$_SupportTicketPayloadCopyWith<_$_SupportTicketPayload> get copyWith =>
      __$$_SupportTicketPayloadCopyWithImpl<_$_SupportTicketPayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SupportTicketPayloadToJson(this);
  }
}

abstract class _SupportTicketPayload implements SupportTicketPayload {
  const factory _SupportTicketPayload(
      {final List<SupportTicket> content,
      required final int totalPages,
      required final int totalElements,
      required final int numberOfElements,
      required final bool last,
      required final bool first,
      required final bool empty}) = _$_SupportTicketPayload;

  factory _SupportTicketPayload.fromJson(Map<String, dynamic> json) =
      _$_SupportTicketPayload.fromJson;

  @override
  List<SupportTicket> get content => throw _privateConstructorUsedError;
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
  _$$_SupportTicketPayloadCopyWith<_$_SupportTicketPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
