// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'receipt_supplier.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SupplierReceipt _$SupplierReceiptFromJson(Map<String, dynamic> json) {
  return _SupplierReceipt.fromJson(json);
}

/// @nodoc
mixin _$SupplierReceipt {
  int get id => throw _privateConstructorUsedError;
  int get supplierId => throw _privateConstructorUsedError;
  SupplierModel? get supplier => throw _privateConstructorUsedError;
  num get amount => throw _privateConstructorUsedError;
  DateTime get paymentDate => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupplierReceiptCopyWith<SupplierReceipt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplierReceiptCopyWith<$Res> {
  factory $SupplierReceiptCopyWith(
          SupplierReceipt value, $Res Function(SupplierReceipt) then) =
      _$SupplierReceiptCopyWithImpl<$Res, SupplierReceipt>;
  @useResult
  $Res call(
      {int id,
      int supplierId,
      SupplierModel? supplier,
      num amount,
      DateTime paymentDate,
      String? notes,
      DateTime createdAt,
      DateTime updatedAt});

  $SupplierModelCopyWith<$Res>? get supplier;
}

/// @nodoc
class _$SupplierReceiptCopyWithImpl<$Res, $Val extends SupplierReceipt>
    implements $SupplierReceiptCopyWith<$Res> {
  _$SupplierReceiptCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? supplierId = null,
    Object? supplier = freezed,
    Object? amount = null,
    Object? paymentDate = null,
    Object? notes = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      supplierId: null == supplierId
          ? _value.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as int,
      supplier: freezed == supplier
          ? _value.supplier
          : supplier // ignore: cast_nullable_to_non_nullable
              as SupplierModel?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      paymentDate: null == paymentDate
          ? _value.paymentDate
          : paymentDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SupplierModelCopyWith<$Res>? get supplier {
    if (_value.supplier == null) {
      return null;
    }

    return $SupplierModelCopyWith<$Res>(_value.supplier!, (value) {
      return _then(_value.copyWith(supplier: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SupplierReceiptImplCopyWith<$Res>
    implements $SupplierReceiptCopyWith<$Res> {
  factory _$$SupplierReceiptImplCopyWith(_$SupplierReceiptImpl value,
          $Res Function(_$SupplierReceiptImpl) then) =
      __$$SupplierReceiptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int supplierId,
      SupplierModel? supplier,
      num amount,
      DateTime paymentDate,
      String? notes,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $SupplierModelCopyWith<$Res>? get supplier;
}

/// @nodoc
class __$$SupplierReceiptImplCopyWithImpl<$Res>
    extends _$SupplierReceiptCopyWithImpl<$Res, _$SupplierReceiptImpl>
    implements _$$SupplierReceiptImplCopyWith<$Res> {
  __$$SupplierReceiptImplCopyWithImpl(
      _$SupplierReceiptImpl _value, $Res Function(_$SupplierReceiptImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? supplierId = null,
    Object? supplier = freezed,
    Object? amount = null,
    Object? paymentDate = null,
    Object? notes = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$SupplierReceiptImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      supplierId: null == supplierId
          ? _value.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as int,
      supplier: freezed == supplier
          ? _value.supplier
          : supplier // ignore: cast_nullable_to_non_nullable
              as SupplierModel?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      paymentDate: null == paymentDate
          ? _value.paymentDate
          : paymentDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupplierReceiptImpl implements _SupplierReceipt {
  const _$SupplierReceiptImpl(
      {required this.id,
      required this.supplierId,
      this.supplier,
      required this.amount,
      required this.paymentDate,
      this.notes,
      required this.createdAt,
      required this.updatedAt});

  factory _$SupplierReceiptImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupplierReceiptImplFromJson(json);

  @override
  final int id;
  @override
  final int supplierId;
  @override
  final SupplierModel? supplier;
  @override
  final num amount;
  @override
  final DateTime paymentDate;
  @override
  final String? notes;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'SupplierReceipt(id: $id, supplierId: $supplierId, supplier: $supplier, amount: $amount, paymentDate: $paymentDate, notes: $notes, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupplierReceiptImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.supplierId, supplierId) ||
                other.supplierId == supplierId) &&
            (identical(other.supplier, supplier) ||
                other.supplier == supplier) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.paymentDate, paymentDate) ||
                other.paymentDate == paymentDate) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, supplierId, supplier, amount,
      paymentDate, notes, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SupplierReceiptImplCopyWith<_$SupplierReceiptImpl> get copyWith =>
      __$$SupplierReceiptImplCopyWithImpl<_$SupplierReceiptImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupplierReceiptImplToJson(
      this,
    );
  }
}

abstract class _SupplierReceipt implements SupplierReceipt {
  const factory _SupplierReceipt(
      {required final int id,
      required final int supplierId,
      final SupplierModel? supplier,
      required final num amount,
      required final DateTime paymentDate,
      final String? notes,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$SupplierReceiptImpl;

  factory _SupplierReceipt.fromJson(Map<String, dynamic> json) =
      _$SupplierReceiptImpl.fromJson;

  @override
  int get id;
  @override
  int get supplierId;
  @override
  SupplierModel? get supplier;
  @override
  num get amount;
  @override
  DateTime get paymentDate;
  @override
  String? get notes;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$SupplierReceiptImplCopyWith<_$SupplierReceiptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
