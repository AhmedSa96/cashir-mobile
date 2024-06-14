// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_supplier_receipt.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateSupplierReceipt _$CreateSupplierReceiptFromJson(
    Map<String, dynamic> json) {
  return _CreateSupplierReceipt.fromJson(json);
}

/// @nodoc
mixin _$CreateSupplierReceipt {
  int get supplierId => throw _privateConstructorUsedError;
  num get amount => throw _privateConstructorUsedError;
  DateTime get paymentDate => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateSupplierReceiptCopyWith<CreateSupplierReceipt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSupplierReceiptCopyWith<$Res> {
  factory $CreateSupplierReceiptCopyWith(CreateSupplierReceipt value,
          $Res Function(CreateSupplierReceipt) then) =
      _$CreateSupplierReceiptCopyWithImpl<$Res, CreateSupplierReceipt>;
  @useResult
  $Res call({int supplierId, num amount, DateTime paymentDate, String? notes});
}

/// @nodoc
class _$CreateSupplierReceiptCopyWithImpl<$Res,
        $Val extends CreateSupplierReceipt>
    implements $CreateSupplierReceiptCopyWith<$Res> {
  _$CreateSupplierReceiptCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supplierId = null,
    Object? amount = null,
    Object? paymentDate = null,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      supplierId: null == supplierId
          ? _value.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as int,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateSupplierReceiptImplCopyWith<$Res>
    implements $CreateSupplierReceiptCopyWith<$Res> {
  factory _$$CreateSupplierReceiptImplCopyWith(
          _$CreateSupplierReceiptImpl value,
          $Res Function(_$CreateSupplierReceiptImpl) then) =
      __$$CreateSupplierReceiptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int supplierId, num amount, DateTime paymentDate, String? notes});
}

/// @nodoc
class __$$CreateSupplierReceiptImplCopyWithImpl<$Res>
    extends _$CreateSupplierReceiptCopyWithImpl<$Res,
        _$CreateSupplierReceiptImpl>
    implements _$$CreateSupplierReceiptImplCopyWith<$Res> {
  __$$CreateSupplierReceiptImplCopyWithImpl(_$CreateSupplierReceiptImpl _value,
      $Res Function(_$CreateSupplierReceiptImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supplierId = null,
    Object? amount = null,
    Object? paymentDate = null,
    Object? notes = freezed,
  }) {
    return _then(_$CreateSupplierReceiptImpl(
      supplierId: null == supplierId
          ? _value.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as int,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateSupplierReceiptImpl implements _CreateSupplierReceipt {
  const _$CreateSupplierReceiptImpl(
      {required this.supplierId,
      required this.amount,
      required this.paymentDate,
      this.notes});

  factory _$CreateSupplierReceiptImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateSupplierReceiptImplFromJson(json);

  @override
  final int supplierId;
  @override
  final num amount;
  @override
  final DateTime paymentDate;
  @override
  final String? notes;

  @override
  String toString() {
    return 'CreateSupplierReceipt(supplierId: $supplierId, amount: $amount, paymentDate: $paymentDate, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSupplierReceiptImpl &&
            (identical(other.supplierId, supplierId) ||
                other.supplierId == supplierId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.paymentDate, paymentDate) ||
                other.paymentDate == paymentDate) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, supplierId, amount, paymentDate, notes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSupplierReceiptImplCopyWith<_$CreateSupplierReceiptImpl>
      get copyWith => __$$CreateSupplierReceiptImplCopyWithImpl<
          _$CreateSupplierReceiptImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateSupplierReceiptImplToJson(
      this,
    );
  }
}

abstract class _CreateSupplierReceipt implements CreateSupplierReceipt {
  const factory _CreateSupplierReceipt(
      {required final int supplierId,
      required final num amount,
      required final DateTime paymentDate,
      final String? notes}) = _$CreateSupplierReceiptImpl;

  factory _CreateSupplierReceipt.fromJson(Map<String, dynamic> json) =
      _$CreateSupplierReceiptImpl.fromJson;

  @override
  int get supplierId;
  @override
  num get amount;
  @override
  DateTime get paymentDate;
  @override
  String? get notes;
  @override
  @JsonKey(ignore: true)
  _$$CreateSupplierReceiptImplCopyWith<_$CreateSupplierReceiptImpl>
      get copyWith => throw _privateConstructorUsedError;
}
