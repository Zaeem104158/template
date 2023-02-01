// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'support_ticket_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SupportTicketMessage _$SupportTicketMessageFromJson(Map<String, dynamic> json) {
  return _SupportTicketMessage.fromJson(json);
}

/// @nodoc
mixin _$SupportTicketMessage {
  int get id => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  int? get ticketId => throw _privateConstructorUsedError;
  User? get messageFrom => throw _privateConstructorUsedError;
  double get creationDate => throw _privateConstructorUsedError;
  List<DbFile> get attachments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupportTicketMessageCopyWith<SupportTicketMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportTicketMessageCopyWith<$Res> {
  factory $SupportTicketMessageCopyWith(SupportTicketMessage value,
          $Res Function(SupportTicketMessage) then) =
      _$SupportTicketMessageCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String? text,
      int? ticketId,
      User? messageFrom,
      double creationDate,
      List<DbFile> attachments});

  $UserCopyWith<$Res>? get messageFrom;
}

/// @nodoc
class _$SupportTicketMessageCopyWithImpl<$Res>
    implements $SupportTicketMessageCopyWith<$Res> {
  _$SupportTicketMessageCopyWithImpl(this._value, this._then);

  final SupportTicketMessage _value;
  // ignore: unused_field
  final $Res Function(SupportTicketMessage) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? ticketId = freezed,
    Object? messageFrom = freezed,
    Object? creationDate = freezed,
    Object? attachments = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      ticketId: ticketId == freezed
          ? _value.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as int?,
      messageFrom: messageFrom == freezed
          ? _value.messageFrom
          : messageFrom // ignore: cast_nullable_to_non_nullable
              as User?,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as double,
      attachments: attachments == freezed
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<DbFile>,
    ));
  }

  @override
  $UserCopyWith<$Res>? get messageFrom {
    if (_value.messageFrom == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.messageFrom!, (value) {
      return _then(_value.copyWith(messageFrom: value));
    });
  }
}

/// @nodoc
abstract class _$$_SupportTicketMessageCopyWith<$Res>
    implements $SupportTicketMessageCopyWith<$Res> {
  factory _$$_SupportTicketMessageCopyWith(_$_SupportTicketMessage value,
          $Res Function(_$_SupportTicketMessage) then) =
      __$$_SupportTicketMessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String? text,
      int? ticketId,
      User? messageFrom,
      double creationDate,
      List<DbFile> attachments});

  @override
  $UserCopyWith<$Res>? get messageFrom;
}

/// @nodoc
class __$$_SupportTicketMessageCopyWithImpl<$Res>
    extends _$SupportTicketMessageCopyWithImpl<$Res>
    implements _$$_SupportTicketMessageCopyWith<$Res> {
  __$$_SupportTicketMessageCopyWithImpl(_$_SupportTicketMessage _value,
      $Res Function(_$_SupportTicketMessage) _then)
      : super(_value, (v) => _then(v as _$_SupportTicketMessage));

  @override
  _$_SupportTicketMessage get _value => super._value as _$_SupportTicketMessage;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? ticketId = freezed,
    Object? messageFrom = freezed,
    Object? creationDate = freezed,
    Object? attachments = freezed,
  }) {
    return _then(_$_SupportTicketMessage(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      ticketId: ticketId == freezed
          ? _value.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as int?,
      messageFrom: messageFrom == freezed
          ? _value.messageFrom
          : messageFrom // ignore: cast_nullable_to_non_nullable
              as User?,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as double,
      attachments: attachments == freezed
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<DbFile>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SupportTicketMessage implements _SupportTicketMessage {
  const _$_SupportTicketMessage(
      {required this.id,
      this.text,
      this.ticketId,
      this.messageFrom,
      this.creationDate = 0,
      final List<DbFile> attachments = const []})
      : _attachments = attachments;

  factory _$_SupportTicketMessage.fromJson(Map<String, dynamic> json) =>
      _$$_SupportTicketMessageFromJson(json);

  @override
  final int id;
  @override
  final String? text;
  @override
  final int? ticketId;
  @override
  final User? messageFrom;
  @override
  @JsonKey()
  final double creationDate;
  final List<DbFile> _attachments;
  @override
  @JsonKey()
  List<DbFile> get attachments {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  @override
  String toString() {
    return 'SupportTicketMessage(id: $id, text: $text, ticketId: $ticketId, messageFrom: $messageFrom, creationDate: $creationDate, attachments: $attachments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SupportTicketMessage &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.ticketId, ticketId) &&
            const DeepCollectionEquality()
                .equals(other.messageFrom, messageFrom) &&
            const DeepCollectionEquality()
                .equals(other.creationDate, creationDate) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(ticketId),
      const DeepCollectionEquality().hash(messageFrom),
      const DeepCollectionEquality().hash(creationDate),
      const DeepCollectionEquality().hash(_attachments));

  @JsonKey(ignore: true)
  @override
  _$$_SupportTicketMessageCopyWith<_$_SupportTicketMessage> get copyWith =>
      __$$_SupportTicketMessageCopyWithImpl<_$_SupportTicketMessage>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SupportTicketMessageToJson(this);
  }
}

abstract class _SupportTicketMessage implements SupportTicketMessage {
  const factory _SupportTicketMessage(
      {required final int id,
      final String? text,
      final int? ticketId,
      final User? messageFrom,
      final double creationDate,
      final List<DbFile> attachments}) = _$_SupportTicketMessage;

  factory _SupportTicketMessage.fromJson(Map<String, dynamic> json) =
      _$_SupportTicketMessage.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String? get text => throw _privateConstructorUsedError;
  @override
  int? get ticketId => throw _privateConstructorUsedError;
  @override
  User? get messageFrom => throw _privateConstructorUsedError;
  @override
  double get creationDate => throw _privateConstructorUsedError;
  @override
  List<DbFile> get attachments => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SupportTicketMessageCopyWith<_$_SupportTicketMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
