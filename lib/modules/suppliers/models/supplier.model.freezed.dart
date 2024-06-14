// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'supplier.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SupplierModel _$SupplierModelFromJson(Map<String, dynamic> json) {
  return _SupplierModel.fromJson(json);
}

/// @nodoc
mixin _$SupplierModel {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  double get prevAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupplierModelCopyWith<SupplierModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplierModelCopyWith<$Res> {
  factory $SupplierModelCopyWith(
          SupplierModel value, $Res Function(SupplierModel) then) =
      _$SupplierModelCopyWithImpl<$Res, SupplierModel>;
  @useResult
  $Res call(
      {int? id,
      String name,
      String? phone,
      String? address,
      double prevAmount});
}

/// @nodoc
class _$SupplierModelCopyWithImpl<$Res, $Val extends SupplierModel>
    implements $SupplierModelCopyWith<$Res> {
  _$SupplierModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? phone = freezed,
    Object? address = freezed,
    Object? prevAmount = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      prevAmount: null == prevAmount
          ? _value.prevAmount
          : prevAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupplierModelImplCopyWith<$Res>
    implements $SupplierModelCopyWith<$Res> {
  factory _$$SupplierModelImplCopyWith(
          _$SupplierModelImpl value, $Res Function(_$SupplierModelImpl) then) =
      __$$SupplierModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String name,
      String? phone,
      String? address,
      double prevAmount});
}

/// @nodoc
class __$$SupplierModelImplCopyWithImpl<$Res>
    extends _$SupplierModelCopyWithImpl<$Res, _$SupplierModelImpl>
    implements _$$SupplierModelImplCopyWith<$Res> {
  __$$SupplierModelImplCopyWithImpl(
      _$SupplierModelImpl _value, $Res Function(_$SupplierModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? phone = freezed,
    Object? address = freezed,
    Object? prevAmount = null,
  }) {
    return _then(_$SupplierModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      prevAmount: null == prevAmount
          ? _value.prevAmount
          : prevAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupplierModelImpl implements _SupplierModel {
  const _$SupplierModelImpl(
      {required this.id,
      required this.name,
      required this.phone,
      required this.address,
      this.prevAmount = 0});

  factory _$SupplierModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupplierModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String name;
  @override
  final String? phone;
  @override
  final String? address;
  @override
  @JsonKey()
  final double prevAmount;

  @override
  String toString() {
    return 'SupplierModel(id: $id, name: $name, phone: $phone, address: $address, prevAmount: $prevAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupplierModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.prevAmount, prevAmount) ||
                other.prevAmount == prevAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, phone, address, prevAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SupplierModelImplCopyWith<_$SupplierModelImpl> get copyWith =>
      __$$SupplierModelImplCopyWithImpl<_$SupplierModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupplierModelImplToJson(
      this,
    );
  }
}

abstract class _SupplierModel implements SupplierModel {
  const factory _SupplierModel(
      {required final int? id,
      required final String name,
      required final String? phone,
      required final String? address,
      final double prevAmount}) = _$SupplierModelImpl;

  factory _SupplierModel.fromJson(Map<String, dynamic> json) =
      _$SupplierModelImpl.fromJson;

  @override
  int? get id;
  @override
  String get name;
  @override
  String? get phone;
  @override
  String? get address;
  @override
  double get prevAmount;
  @override
  @JsonKey(ignore: true)
  _$$SupplierModelImplCopyWith<_$SupplierModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
