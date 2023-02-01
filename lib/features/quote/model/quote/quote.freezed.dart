// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'quote.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Quote _$QuoteFromJson(Map<String, dynamic> json) {
  return _Quote.fromJson(json);
}

/// @nodoc
mixin _$Quote {
  int get id => throw _privateConstructorUsedError;
  Contact? get contact => throw _privateConstructorUsedError;
  Carrier? get carrier => throw _privateConstructorUsedError;
  User? get assignedAgent => throw _privateConstructorUsedError;
  String? get creationDate => throw _privateConstructorUsedError;
  double get effectiveDate => throw _privateConstructorUsedError;
  String get quoteStatus => throw _privateConstructorUsedError;
  double get premiumAmount => throw _privateConstructorUsedError;
  double get creationDateTimeStamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuoteCopyWith<Quote> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuoteCopyWith<$Res> {
  factory $QuoteCopyWith(Quote value, $Res Function(Quote) then) =
      _$QuoteCopyWithImpl<$Res>;
  $Res call(
      {int id,
      Contact? contact,
      Carrier? carrier,
      User? assignedAgent,
      String? creationDate,
      double effectiveDate,
      String quoteStatus,
      double premiumAmount,
      double creationDateTimeStamp});

  $ContactCopyWith<$Res>? get contact;
  $CarrierCopyWith<$Res>? get carrier;
  $UserCopyWith<$Res>? get assignedAgent;
}

/// @nodoc
class _$QuoteCopyWithImpl<$Res> implements $QuoteCopyWith<$Res> {
  _$QuoteCopyWithImpl(this._value, this._then);

  final Quote _value;
  // ignore: unused_field
  final $Res Function(Quote) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? contact = freezed,
    Object? carrier = freezed,
    Object? assignedAgent = freezed,
    Object? creationDate = freezed,
    Object? effectiveDate = freezed,
    Object? quoteStatus = freezed,
    Object? premiumAmount = freezed,
    Object? creationDateTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      contact: contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      carrier: carrier == freezed
          ? _value.carrier
          : carrier // ignore: cast_nullable_to_non_nullable
              as Carrier?,
      assignedAgent: assignedAgent == freezed
          ? _value.assignedAgent
          : assignedAgent // ignore: cast_nullable_to_non_nullable
              as User?,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      effectiveDate: effectiveDate == freezed
          ? _value.effectiveDate
          : effectiveDate // ignore: cast_nullable_to_non_nullable
              as double,
      quoteStatus: quoteStatus == freezed
          ? _value.quoteStatus
          : quoteStatus // ignore: cast_nullable_to_non_nullable
              as String,
      premiumAmount: premiumAmount == freezed
          ? _value.premiumAmount
          : premiumAmount // ignore: cast_nullable_to_non_nullable
              as double,
      creationDateTimeStamp: creationDateTimeStamp == freezed
          ? _value.creationDateTimeStamp
          : creationDateTimeStamp // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  $ContactCopyWith<$Res>? get contact {
    if (_value.contact == null) {
      return null;
    }

    return $ContactCopyWith<$Res>(_value.contact!, (value) {
      return _then(_value.copyWith(contact: value));
    });
  }

  @override
  $CarrierCopyWith<$Res>? get carrier {
    if (_value.carrier == null) {
      return null;
    }

    return $CarrierCopyWith<$Res>(_value.carrier!, (value) {
      return _then(_value.copyWith(carrier: value));
    });
  }

  @override
  $UserCopyWith<$Res>? get assignedAgent {
    if (_value.assignedAgent == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.assignedAgent!, (value) {
      return _then(_value.copyWith(assignedAgent: value));
    });
  }
}

/// @nodoc
abstract class _$$_QuoteCopyWith<$Res> implements $QuoteCopyWith<$Res> {
  factory _$$_QuoteCopyWith(_$_Quote value, $Res Function(_$_Quote) then) =
      __$$_QuoteCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      Contact? contact,
      Carrier? carrier,
      User? assignedAgent,
      String? creationDate,
      double effectiveDate,
      String quoteStatus,
      double premiumAmount,
      double creationDateTimeStamp});

  @override
  $ContactCopyWith<$Res>? get contact;
  @override
  $CarrierCopyWith<$Res>? get carrier;
  @override
  $UserCopyWith<$Res>? get assignedAgent;
}

/// @nodoc
class __$$_QuoteCopyWithImpl<$Res> extends _$QuoteCopyWithImpl<$Res>
    implements _$$_QuoteCopyWith<$Res> {
  __$$_QuoteCopyWithImpl(_$_Quote _value, $Res Function(_$_Quote) _then)
      : super(_value, (v) => _then(v as _$_Quote));

  @override
  _$_Quote get _value => super._value as _$_Quote;

  @override
  $Res call({
    Object? id = freezed,
    Object? contact = freezed,
    Object? carrier = freezed,
    Object? assignedAgent = freezed,
    Object? creationDate = freezed,
    Object? effectiveDate = freezed,
    Object? quoteStatus = freezed,
    Object? premiumAmount = freezed,
    Object? creationDateTimeStamp = freezed,
  }) {
    return _then(_$_Quote(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      contact: contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      carrier: carrier == freezed
          ? _value.carrier
          : carrier // ignore: cast_nullable_to_non_nullable
              as Carrier?,
      assignedAgent: assignedAgent == freezed
          ? _value.assignedAgent
          : assignedAgent // ignore: cast_nullable_to_non_nullable
              as User?,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      effectiveDate: effectiveDate == freezed
          ? _value.effectiveDate
          : effectiveDate // ignore: cast_nullable_to_non_nullable
              as double,
      quoteStatus: quoteStatus == freezed
          ? _value.quoteStatus
          : quoteStatus // ignore: cast_nullable_to_non_nullable
              as String,
      premiumAmount: premiumAmount == freezed
          ? _value.premiumAmount
          : premiumAmount // ignore: cast_nullable_to_non_nullable
              as double,
      creationDateTimeStamp: creationDateTimeStamp == freezed
          ? _value.creationDateTimeStamp
          : creationDateTimeStamp // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Quote implements _Quote {
  const _$_Quote(
      {required this.id,
      this.contact,
      this.carrier,
      this.assignedAgent,
      this.creationDate,
      this.effectiveDate = 0,
      this.quoteStatus = "",
      this.premiumAmount = 0,
      this.creationDateTimeStamp = 0});

  factory _$_Quote.fromJson(Map<String, dynamic> json) =>
      _$$_QuoteFromJson(json);

  @override
  final int id;
  @override
  final Contact? contact;
  @override
  final Carrier? carrier;
  @override
  final User? assignedAgent;
  @override
  final String? creationDate;
  @override
  @JsonKey()
  final double effectiveDate;
  @override
  @JsonKey()
  final String quoteStatus;
  @override
  @JsonKey()
  final double premiumAmount;
  @override
  @JsonKey()
  final double creationDateTimeStamp;

  @override
  String toString() {
    return 'Quote(id: $id, contact: $contact, carrier: $carrier, assignedAgent: $assignedAgent, creationDate: $creationDate, effectiveDate: $effectiveDate, quoteStatus: $quoteStatus, premiumAmount: $premiumAmount, creationDateTimeStamp: $creationDateTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Quote &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.contact, contact) &&
            const DeepCollectionEquality().equals(other.carrier, carrier) &&
            const DeepCollectionEquality()
                .equals(other.assignedAgent, assignedAgent) &&
            const DeepCollectionEquality()
                .equals(other.creationDate, creationDate) &&
            const DeepCollectionEquality()
                .equals(other.effectiveDate, effectiveDate) &&
            const DeepCollectionEquality()
                .equals(other.quoteStatus, quoteStatus) &&
            const DeepCollectionEquality()
                .equals(other.premiumAmount, premiumAmount) &&
            const DeepCollectionEquality()
                .equals(other.creationDateTimeStamp, creationDateTimeStamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(contact),
      const DeepCollectionEquality().hash(carrier),
      const DeepCollectionEquality().hash(assignedAgent),
      const DeepCollectionEquality().hash(creationDate),
      const DeepCollectionEquality().hash(effectiveDate),
      const DeepCollectionEquality().hash(quoteStatus),
      const DeepCollectionEquality().hash(premiumAmount),
      const DeepCollectionEquality().hash(creationDateTimeStamp));

  @JsonKey(ignore: true)
  @override
  _$$_QuoteCopyWith<_$_Quote> get copyWith =>
      __$$_QuoteCopyWithImpl<_$_Quote>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuoteToJson(this);
  }
}

abstract class _Quote implements Quote {
  const factory _Quote(
      {required final int id,
      final Contact? contact,
      final Carrier? carrier,
      final User? assignedAgent,
      final String? creationDate,
      final double effectiveDate,
      final String quoteStatus,
      final double premiumAmount,
      final double creationDateTimeStamp}) = _$_Quote;

  factory _Quote.fromJson(Map<String, dynamic> json) = _$_Quote.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  Contact? get contact => throw _privateConstructorUsedError;
  @override
  Carrier? get carrier => throw _privateConstructorUsedError;
  @override
  User? get assignedAgent => throw _privateConstructorUsedError;
  @override
  String? get creationDate => throw _privateConstructorUsedError;
  @override
  double get effectiveDate => throw _privateConstructorUsedError;
  @override
  String get quoteStatus => throw _privateConstructorUsedError;
  @override
  double get premiumAmount => throw _privateConstructorUsedError;
  @override
  double get creationDateTimeStamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_QuoteCopyWith<_$_Quote> get copyWith =>
      throw _privateConstructorUsedError;
}
