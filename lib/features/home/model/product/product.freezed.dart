// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  int get id => throw _privateConstructorUsedError;
  String? get creationDate => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get tag => throw _privateConstructorUsedError;
  String? get longDescription => throw _privateConstructorUsedError;
  String? get shortDescription => throw _privateConstructorUsedError;
  DbFile? get image => throw _privateConstructorUsedError;
  DbFile? get icon => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  double get creationDateTimeStamp => throw _privateConstructorUsedError;
  bool get isRecommended => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String? creationDate,
      String name,
      String? tag,
      String? longDescription,
      String? shortDescription,
      DbFile? image,
      DbFile? icon,
      bool? active,
      double creationDateTimeStamp,
      bool isRecommended});

  $DbFileCopyWith<$Res>? get image;
  $DbFileCopyWith<$Res>? get icon;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  final Product _value;
  // ignore: unused_field
  final $Res Function(Product) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? creationDate = freezed,
    Object? name = freezed,
    Object? tag = freezed,
    Object? longDescription = freezed,
    Object? shortDescription = freezed,
    Object? image = freezed,
    Object? icon = freezed,
    Object? active = freezed,
    Object? creationDateTimeStamp = freezed,
    Object? isRecommended = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      longDescription: longDescription == freezed
          ? _value.longDescription
          : longDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDescription: shortDescription == freezed
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as DbFile?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as DbFile?,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      creationDateTimeStamp: creationDateTimeStamp == freezed
          ? _value.creationDateTimeStamp
          : creationDateTimeStamp // ignore: cast_nullable_to_non_nullable
              as double,
      isRecommended: isRecommended == freezed
          ? _value.isRecommended
          : isRecommended // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $DbFileCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $DbFileCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value));
    });
  }

  @override
  $DbFileCopyWith<$Res>? get icon {
    if (_value.icon == null) {
      return null;
    }

    return $DbFileCopyWith<$Res>(_value.icon!, (value) {
      return _then(_value.copyWith(icon: value));
    });
  }
}

/// @nodoc
abstract class _$$_ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$_ProductCopyWith(
          _$_Product value, $Res Function(_$_Product) then) =
      __$$_ProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String? creationDate,
      String name,
      String? tag,
      String? longDescription,
      String? shortDescription,
      DbFile? image,
      DbFile? icon,
      bool? active,
      double creationDateTimeStamp,
      bool isRecommended});

  @override
  $DbFileCopyWith<$Res>? get image;
  @override
  $DbFileCopyWith<$Res>? get icon;
}

/// @nodoc
class __$$_ProductCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements _$$_ProductCopyWith<$Res> {
  __$$_ProductCopyWithImpl(_$_Product _value, $Res Function(_$_Product) _then)
      : super(_value, (v) => _then(v as _$_Product));

  @override
  _$_Product get _value => super._value as _$_Product;

  @override
  $Res call({
    Object? id = freezed,
    Object? creationDate = freezed,
    Object? name = freezed,
    Object? tag = freezed,
    Object? longDescription = freezed,
    Object? shortDescription = freezed,
    Object? image = freezed,
    Object? icon = freezed,
    Object? active = freezed,
    Object? creationDateTimeStamp = freezed,
    Object? isRecommended = freezed,
  }) {
    return _then(_$_Product(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      longDescription: longDescription == freezed
          ? _value.longDescription
          : longDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDescription: shortDescription == freezed
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as DbFile?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as DbFile?,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      creationDateTimeStamp: creationDateTimeStamp == freezed
          ? _value.creationDateTimeStamp
          : creationDateTimeStamp // ignore: cast_nullable_to_non_nullable
              as double,
      isRecommended: isRecommended == freezed
          ? _value.isRecommended
          : isRecommended // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Product implements _Product {
  const _$_Product(
      {required this.id,
      this.creationDate,
      this.name = "",
      this.tag,
      this.longDescription,
      this.shortDescription,
      this.image,
      this.icon,
      this.active,
      this.creationDateTimeStamp = 0,
      this.isRecommended = false});

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$$_ProductFromJson(json);

  @override
  final int id;
  @override
  final String? creationDate;
  @override
  @JsonKey()
  final String name;
  @override
  final String? tag;
  @override
  final String? longDescription;
  @override
  final String? shortDescription;
  @override
  final DbFile? image;
  @override
  final DbFile? icon;
  @override
  final bool? active;
  @override
  @JsonKey()
  final double creationDateTimeStamp;
  @override
  @JsonKey()
  final bool isRecommended;

  @override
  String toString() {
    return 'Product(id: $id, creationDate: $creationDate, name: $name, tag: $tag, longDescription: $longDescription, shortDescription: $shortDescription, image: $image, icon: $icon, active: $active, creationDateTimeStamp: $creationDateTimeStamp, isRecommended: $isRecommended)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Product &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.creationDate, creationDate) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.tag, tag) &&
            const DeepCollectionEquality()
                .equals(other.longDescription, longDescription) &&
            const DeepCollectionEquality()
                .equals(other.shortDescription, shortDescription) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality().equals(other.active, active) &&
            const DeepCollectionEquality()
                .equals(other.creationDateTimeStamp, creationDateTimeStamp) &&
            const DeepCollectionEquality()
                .equals(other.isRecommended, isRecommended));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(creationDate),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(tag),
      const DeepCollectionEquality().hash(longDescription),
      const DeepCollectionEquality().hash(shortDescription),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(icon),
      const DeepCollectionEquality().hash(active),
      const DeepCollectionEquality().hash(creationDateTimeStamp),
      const DeepCollectionEquality().hash(isRecommended));

  @JsonKey(ignore: true)
  @override
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      __$$_ProductCopyWithImpl<_$_Product>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductToJson(this);
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {required final int id,
      final String? creationDate,
      final String name,
      final String? tag,
      final String? longDescription,
      final String? shortDescription,
      final DbFile? image,
      final DbFile? icon,
      final bool? active,
      final double creationDateTimeStamp,
      final bool isRecommended}) = _$_Product;

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String? get creationDate => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String? get tag => throw _privateConstructorUsedError;
  @override
  String? get longDescription => throw _privateConstructorUsedError;
  @override
  String? get shortDescription => throw _privateConstructorUsedError;
  @override
  DbFile? get image => throw _privateConstructorUsedError;
  @override
  DbFile? get icon => throw _privateConstructorUsedError;
  @override
  bool? get active => throw _privateConstructorUsedError;
  @override
  double get creationDateTimeStamp => throw _privateConstructorUsedError;
  @override
  bool get isRecommended => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      throw _privateConstructorUsedError;
}
