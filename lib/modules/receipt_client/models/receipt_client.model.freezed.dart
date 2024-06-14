// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'receipt_client.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClientReceipt _$ClientReceiptFromJson(Map<String, dynamic> json) {
  return _ClientReceipt.fromJson(json);
}

/// @nodoc
mixin _$ClientReceipt {
  int get id => throw _privateConstructorUsedError;
  int get clientId => throw _privateConstructorUsedError;
  ClientModel? get client => throw _privateConstructorUsedError;
  num get amount => throw _privateConstructorUsedError;
  DateTime get paymentDate => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientReceiptCopyWith<ClientReceipt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientReceiptCopyWith<$Res> {
  factory $ClientReceiptCopyWith(
          ClientReceipt value, $Res Function(ClientReceipt) then) =
      _$ClientReceiptCopyWithImpl<$Res, ClientReceipt>;
  @useResult
  $Res call(
      {int id,
      int clientId,
      ClientModel? client,
      num amount,
      DateTime paymentDate,
      String? notes,
      DateTime? createdAt,
      DateTime? updatedAt});

  $ClientModelCopyWith<$Res>? get client;
}

/// @nodoc
class _$ClientReceiptCopyWithImpl<$Res, $Val extends ClientReceipt>
    implements $ClientReceiptCopyWith<$Res> {
  _$ClientReceiptCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clientId = null,
    Object? client = freezed,
    Object? amount = null,
    Object? paymentDate = null,
    Object? notes = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as ClientModel?,
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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClientModelCopyWith<$Res>? get client {
    if (_value.client == null) {
      return null;
    }

    return $ClientModelCopyWith<$Res>(_value.client!, (value) {
      return _then(_value.copyWith(client: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClientReceiptImplCopyWith<$Res>
    implements $ClientReceiptCopyWith<$Res> {
  factory _$$ClientReceiptImplCopyWith(
          _$ClientReceiptImpl value, $Res Function(_$ClientReceiptImpl) then) =
      __$$ClientReceiptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int clientId,
      ClientModel? client,
      num amount,
      DateTime paymentDate,
      String? notes,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $ClientModelCopyWith<$Res>? get client;
}

/// @nodoc
class __$$ClientReceiptImplCopyWithImpl<$Res>
    extends _$ClientReceiptCopyWithImpl<$Res, _$ClientReceiptImpl>
    implements _$$ClientReceiptImplCopyWith<$Res> {
  __$$ClientReceiptImplCopyWithImpl(
      _$ClientReceiptImpl _value, $Res Function(_$ClientReceiptImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clientId = null,
    Object? client = freezed,
    Object? amount = null,
    Object? paymentDate = null,
    Object? notes = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ClientReceiptImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as ClientModel?,
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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientReceiptImpl implements _ClientReceipt {
  const _$ClientReceiptImpl(
      {required this.id,
      required this.clientId,
      this.client,
      required this.amount,
      required this.paymentDate,
      this.notes,
      this.createdAt,
      this.updatedAt});

  factory _$ClientReceiptImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientReceiptImplFromJson(json);

  @override
  final int id;
  @override
  final int clientId;
  @override
  final ClientModel? client;
  @override
  final num amount;
  @override
  final DateTime paymentDate;
  @override
  final String? notes;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ClientReceipt(id: $id, clientId: $clientId, client: $client, amount: $amount, paymentDate: $paymentDate, notes: $notes, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientReceiptImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.client, client) || other.client == client) &&
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
  int get hashCode => Object.hash(runtimeType, id, clientId, client, amount,
      paymentDate, notes, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientReceiptImplCopyWith<_$ClientReceiptImpl> get copyWith =>
      __$$ClientReceiptImplCopyWithImpl<_$ClientReceiptImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientReceiptImplToJson(
      this,
    );
  }
}

abstract class _ClientReceipt implements ClientReceipt {
  const factory _ClientReceipt(
      {required final int id,
      required final int clientId,
      final ClientModel? client,
      required final num amount,
      required final DateTime paymentDate,
      final String? notes,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$ClientReceiptImpl;

  factory _ClientReceipt.fromJson(Map<String, dynamic> json) =
      _$ClientReceiptImpl.fromJson;

  @override
  int get id;
  @override
  int get clientId;
  @override
  ClientModel? get client;
  @override
  num get amount;
  @override
  DateTime get paymentDate;
  @override
  String? get notes;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ClientReceiptImplCopyWith<_$ClientReceiptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
