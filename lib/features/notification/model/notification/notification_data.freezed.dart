// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationData _$NotificationDataFromJson(Map<String, dynamic> json) {
  return _NotificationData.fromJson(json);
}

/// @nodoc
mixin _$NotificationData {
  int get id => throw _privateConstructorUsedError;
  User? get recipient => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int? get typeId => throw _privateConstructorUsedError;
  bool? get read => throw _privateConstructorUsedError;
  User? get sender => throw _privateConstructorUsedError;
  double get creationDateTimeStamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationDataCopyWith<NotificationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationDataCopyWith<$Res> {
  factory $NotificationDataCopyWith(
          NotificationData value, $Res Function(NotificationData) then) =
      _$NotificationDataCopyWithImpl<$Res>;
  $Res call(
      {int id,
      User? recipient,
      String message,
      String type,
      int? typeId,
      bool? read,
      User? sender,
      double creationDateTimeStamp});

  $UserCopyWith<$Res>? get recipient;
  $UserCopyWith<$Res>? get sender;
}

/// @nodoc
class _$NotificationDataCopyWithImpl<$Res>
    implements $NotificationDataCopyWith<$Res> {
  _$NotificationDataCopyWithImpl(this._value, this._then);

  final NotificationData _value;
  // ignore: unused_field
  final $Res Function(NotificationData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? recipient = freezed,
    Object? message = freezed,
    Object? type = freezed,
    Object? typeId = freezed,
    Object? read = freezed,
    Object? sender = freezed,
    Object? creationDateTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      recipient: recipient == freezed
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as User?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      typeId: typeId == freezed
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as int?,
      read: read == freezed
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool?,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as User?,
      creationDateTimeStamp: creationDateTimeStamp == freezed
          ? _value.creationDateTimeStamp
          : creationDateTimeStamp // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  $UserCopyWith<$Res>? get recipient {
    if (_value.recipient == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.recipient!, (value) {
      return _then(_value.copyWith(recipient: value));
    });
  }

  @override
  $UserCopyWith<$Res>? get sender {
    if (_value.sender == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.sender!, (value) {
      return _then(_value.copyWith(sender: value));
    });
  }
}

/// @nodoc
abstract class _$$_NotificationDataCopyWith<$Res>
    implements $NotificationDataCopyWith<$Res> {
  factory _$$_NotificationDataCopyWith(
          _$_NotificationData value, $Res Function(_$_NotificationData) then) =
      __$$_NotificationDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      User? recipient,
      String message,
      String type,
      int? typeId,
      bool? read,
      User? sender,
      double creationDateTimeStamp});

  @override
  $UserCopyWith<$Res>? get recipient;
  @override
  $UserCopyWith<$Res>? get sender;
}

/// @nodoc
class __$$_NotificationDataCopyWithImpl<$Res>
    extends _$NotificationDataCopyWithImpl<$Res>
    implements _$$_NotificationDataCopyWith<$Res> {
  __$$_NotificationDataCopyWithImpl(
      _$_NotificationData _value, $Res Function(_$_NotificationData) _then)
      : super(_value, (v) => _then(v as _$_NotificationData));

  @override
  _$_NotificationData get _value => super._value as _$_NotificationData;

  @override
  $Res call({
    Object? id = freezed,
    Object? recipient = freezed,
    Object? message = freezed,
    Object? type = freezed,
    Object? typeId = freezed,
    Object? read = freezed,
    Object? sender = freezed,
    Object? creationDateTimeStamp = freezed,
  }) {
    return _then(_$_NotificationData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      recipient: recipient == freezed
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as User?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      typeId: typeId == freezed
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as int?,
      read: read == freezed
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool?,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as User?,
      creationDateTimeStamp: creationDateTimeStamp == freezed
          ? _value.creationDateTimeStamp
          : creationDateTimeStamp // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationData implements _NotificationData {
  const _$_NotificationData(
      {required this.id,
      this.recipient,
      this.message = "",
      this.type = "",
      this.typeId,
      this.read,
      this.sender,
      this.creationDateTimeStamp = 0});

  factory _$_NotificationData.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationDataFromJson(json);

  @override
  final int id;
  @override
  final User? recipient;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String type;
  @override
  final int? typeId;
  @override
  final bool? read;
  @override
  final User? sender;
  @override
  @JsonKey()
  final double creationDateTimeStamp;

  @override
  String toString() {
    return 'NotificationData(id: $id, recipient: $recipient, message: $message, type: $type, typeId: $typeId, read: $read, sender: $sender, creationDateTimeStamp: $creationDateTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.recipient, recipient) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.typeId, typeId) &&
            const DeepCollectionEquality().equals(other.read, read) &&
            const DeepCollectionEquality().equals(other.sender, sender) &&
            const DeepCollectionEquality()
                .equals(other.creationDateTimeStamp, creationDateTimeStamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(recipient),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(typeId),
      const DeepCollectionEquality().hash(read),
      const DeepCollectionEquality().hash(sender),
      const DeepCollectionEquality().hash(creationDateTimeStamp));

  @JsonKey(ignore: true)
  @override
  _$$_NotificationDataCopyWith<_$_NotificationData> get copyWith =>
      __$$_NotificationDataCopyWithImpl<_$_NotificationData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationDataToJson(this);
  }
}

abstract class _NotificationData implements NotificationData {
  const factory _NotificationData(
      {required final int id,
      final User? recipient,
      final String message,
      final String type,
      final int? typeId,
      final bool? read,
      final User? sender,
      final double creationDateTimeStamp}) = _$_NotificationData;

  factory _NotificationData.fromJson(Map<String, dynamic> json) =
      _$_NotificationData.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  User? get recipient => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  int? get typeId => throw _privateConstructorUsedError;
  @override
  bool? get read => throw _privateConstructorUsedError;
  @override
  User? get sender => throw _privateConstructorUsedError;
  @override
  double get creationDateTimeStamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationDataCopyWith<_$_NotificationData> get copyWith =>
      throw _privateConstructorUsedError;
}
