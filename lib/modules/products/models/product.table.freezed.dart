// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.table.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductTable {
  int? get id => throw _privateConstructorUsedError;
  String? get barcode => throw _privateConstructorUsedError;
  String? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductTableCopyWith<ProductTable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductTableCopyWith<$Res> {
  factory $ProductTableCopyWith(
          ProductTable value, $Res Function(ProductTable) then) =
      _$ProductTableCopyWithImpl<$Res, ProductTable>;
  @useResult
  $Res call({int? id, String? barcode, String? data});
}

/// @nodoc
class _$ProductTableCopyWithImpl<$Res, $Val extends ProductTable>
    implements $ProductTableCopyWith<$Res> {
  _$ProductTableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? barcode = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductTableImplCopyWith<$Res>
    implements $ProductTableCopyWith<$Res> {
  factory _$$ProductTableImplCopyWith(
          _$ProductTableImpl value, $Res Function(_$ProductTableImpl) then) =
      __$$ProductTableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? barcode, String? data});
}

/// @nodoc
class __$$ProductTableImplCopyWithImpl<$Res>
    extends _$ProductTableCopyWithImpl<$Res, _$ProductTableImpl>
    implements _$$ProductTableImplCopyWith<$Res> {
  __$$ProductTableImplCopyWithImpl(
      _$ProductTableImpl _value, $Res Function(_$ProductTableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? barcode = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ProductTableImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ProductTableImpl extends _ProductTable {
  const _$ProductTableImpl({this.id, this.barcode, this.data}) : super._();

  @override
  final int? id;
  @override
  final String? barcode;
  @override
  final String? data;

  @override
  String toString() {
    return 'ProductTable(id: $id, barcode: $barcode, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductTableImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, barcode, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductTableImplCopyWith<_$ProductTableImpl> get copyWith =>
      __$$ProductTableImplCopyWithImpl<_$ProductTableImpl>(this, _$identity);
}

abstract class _ProductTable extends ProductTable {
  const factory _ProductTable(
      {final int? id,
      final String? barcode,
      final String? data}) = _$ProductTableImpl;
  const _ProductTable._() : super._();

  @override
  int? get id;
  @override
  String? get barcode;
  @override
  String? get data;
  @override
  @JsonKey(ignore: true)
  _$$ProductTableImplCopyWith<_$ProductTableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
