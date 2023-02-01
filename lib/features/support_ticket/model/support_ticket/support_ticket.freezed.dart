// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'support_ticket.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SupportTicket _$SupportTicketFromJson(Map<String, dynamic> json) {
  return _SupportTicket.fromJson(json);
}

/// @nodoc
mixin _$SupportTicket {
  int get id => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get appId => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get ticketStatus => throw _privateConstructorUsedError;
  double get creationDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupportTicketCopyWith<SupportTicket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportTicketCopyWith<$Res> {
  factory $SupportTicketCopyWith(
          SupportTicket value, $Res Function(SupportTicket) then) =
      _$SupportTicketCopyWithImpl<$Res>;
  $Res call(
      {int id,
      User? user,
      String? title,
      String? appId,
      String? description,
      String? ticketStatus,
      double creationDate});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$SupportTicketCopyWithImpl<$Res>
    implements $SupportTicketCopyWith<$Res> {
  _$SupportTicketCopyWithImpl(this._value, this._then);

  final SupportTicket _value;
  // ignore: unused_field
  final $Res Function(SupportTicket) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? title = freezed,
    Object? appId = freezed,
    Object? description = freezed,
    Object? ticketStatus = freezed,
    Object? creationDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      appId: appId == freezed
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      ticketStatus: ticketStatus == freezed
          ? _value.ticketStatus
          : ticketStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$$_SupportTicketCopyWith<$Res>
    implements $SupportTicketCopyWith<$Res> {
  factory _$$_SupportTicketCopyWith(
          _$_SupportTicket value, $Res Function(_$_SupportTicket) then) =
      __$$_SupportTicketCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      User? user,
      String? title,
      String? appId,
      String? description,
      String? ticketStatus,
      double creationDate});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_SupportTicketCopyWithImpl<$Res>
    extends _$SupportTicketCopyWithImpl<$Res>
    implements _$$_SupportTicketCopyWith<$Res> {
  __$$_SupportTicketCopyWithImpl(
      _$_SupportTicket _value, $Res Function(_$_SupportTicket) _then)
      : super(_value, (v) => _then(v as _$_SupportTicket));

  @override
  _$_SupportTicket get _value => super._value as _$_SupportTicket;

  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? title = freezed,
    Object? appId = freezed,
    Object? description = freezed,
    Object? ticketStatus = freezed,
    Object? creationDate = freezed,
  }) {
    return _then(_$_SupportTicket(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      appId: appId == freezed
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      ticketStatus: ticketStatus == freezed
          ? _value.ticketStatus
          : ticketStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SupportTicket implements _SupportTicket {
  const _$_SupportTicket(
      {required this.id,
      this.user,
      this.title,
      this.appId,
      this.description,
      this.ticketStatus,
      this.creationDate = 0});

  factory _$_SupportTicket.fromJson(Map<String, dynamic> json) =>
      _$$_SupportTicketFromJson(json);

  @override
  final int id;
  @override
  final User? user;
  @override
  final String? title;
  @override
  final String? appId;
  @override
  final String? description;
  @override
  final String? ticketStatus;
  @override
  @JsonKey()
  final double creationDate;

  @override
  String toString() {
    return 'SupportTicket(id: $id, user: $user, title: $title, appId: $appId, description: $description, ticketStatus: $ticketStatus, creationDate: $creationDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SupportTicket &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.appId, appId) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.ticketStatus, ticketStatus) &&
            const DeepCollectionEquality()
                .equals(other.creationDate, creationDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(appId),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(ticketStatus),
      const DeepCollectionEquality().hash(creationDate));

  @JsonKey(ignore: true)
  @override
  _$$_SupportTicketCopyWith<_$_SupportTicket> get copyWith =>
      __$$_SupportTicketCopyWithImpl<_$_SupportTicket>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SupportTicketToJson(this);
  }
}

abstract class _SupportTicket implements SupportTicket {
  const factory _SupportTicket(
      {required final int id,
      final User? user,
      final String? title,
      final String? appId,
      final String? description,
      final String? ticketStatus,
      final double creationDate}) = _$_SupportTicket;

  factory _SupportTicket.fromJson(Map<String, dynamic> json) =
      _$_SupportTicket.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  User? get user => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get appId => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get ticketStatus => throw _privateConstructorUsedError;
  @override
  double get creationDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SupportTicketCopyWith<_$_SupportTicket> get copyWith =>
      throw _privateConstructorUsedError;
}
