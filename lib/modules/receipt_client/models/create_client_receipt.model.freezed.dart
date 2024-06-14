// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_client_receipt.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateClientReceipt _$CreateClientReceiptFromJson(Map<String, dynamic> json) {
  return _CreateClientReceipt.fromJson(json);
}

/// @nodoc
mixin _$CreateClientReceipt {
  int get clientId => throw _privateConstructorUsedError;
  num get amount => throw _privateConstructorUsedError;
  DateTime get paymentDate => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateClientReceiptCopyWith<CreateClientReceipt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateClientReceiptCopyWith<$Res> {
  factory $CreateClientReceiptCopyWith(
          CreateClientReceipt value, $Res Function(CreateClientReceipt) then) =
      _$CreateClientReceiptCopyWithImpl<$Res, CreateClientReceipt>;
  @useResult
  $Res call({int clientId, num amount, DateTime paymentDate, String? notes});
}

/// @nodoc
class _$CreateClientReceiptCopyWithImpl<$Res, $Val extends CreateClientReceipt>
    implements $CreateClientReceiptCopyWith<$Res> {
  _$CreateClientReceiptCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
    Object? amount = null,
    Object? paymentDate = null,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$CreateClientReceiptImplCopyWith<$Res>
    implements $CreateClientReceiptCopyWith<$Res> {
  factory _$$CreateClientReceiptImplCopyWith(_$CreateClientReceiptImpl value,
          $Res Function(_$CreateClientReceiptImpl) then) =
      __$$CreateClientReceiptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int clientId, num amount, DateTime paymentDate, String? notes});
}

/// @nodoc
class __$$CreateClientReceiptImplCopyWithImpl<$Res>
    extends _$CreateClientReceiptCopyWithImpl<$Res, _$CreateClientReceiptImpl>
    implements _$$CreateClientReceiptImplCopyWith<$Res> {
  __$$CreateClientReceiptImplCopyWithImpl(_$CreateClientReceiptImpl _value,
      $Res Function(_$CreateClientReceiptImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
    Object? amount = null,
    Object? paymentDate = null,
    Object? notes = freezed,
  }) {
    return _then(_$CreateClientReceiptImpl(
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
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
class _$CreateClientReceiptImpl implements _CreateClientReceipt {
  const _$CreateClientReceiptImpl(
      {required this.clientId,
      required this.amount,
      required this.paymentDate,
      this.notes});

  factory _$CreateClientReceiptImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateClientReceiptImplFromJson(json);

  @override
  final int clientId;
  @override
  final num amount;
  @override
  final DateTime paymentDate;
  @override
  final String? notes;

  @override
  String toString() {
    return 'CreateClientReceipt(clientId: $clientId, amount: $amount, paymentDate: $paymentDate, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateClientReceiptImpl &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.paymentDate, paymentDate) ||
                other.paymentDate == paymentDate) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, clientId, amount, paymentDate, notes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateClientReceiptImplCopyWith<_$CreateClientReceiptImpl> get copyWith =>
      __$$CreateClientReceiptImplCopyWithImpl<_$CreateClientReceiptImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateClientReceiptImplToJson(
      this,
    );
  }
}

abstract class _CreateClientReceipt implements CreateClientReceipt {
  const factory _CreateClientReceipt(
      {required final int clientId,
      required final num amount,
      required final DateTime paymentDate,
      final String? notes}) = _$CreateClientReceiptImpl;

  factory _CreateClientReceipt.fromJson(Map<String, dynamic> json) =
      _$CreateClientReceiptImpl.fromJson;

  @override
  int get clientId;
  @override
  num get amount;
  @override
  DateTime get paymentDate;
  @override
  String? get notes;
  @override
  @JsonKey(ignore: true)
  _$$CreateClientReceiptImplCopyWith<_$CreateClientReceiptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
