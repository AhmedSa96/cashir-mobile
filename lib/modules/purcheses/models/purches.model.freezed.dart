// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purches.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PurchesProduct _$PurchesProductFromJson(Map<String, dynamic> json) {
  return _PurchesProduct.fromJson(json);
}

/// @nodoc
mixin _$PurchesProduct {
  int get productId => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchesProductCopyWith<PurchesProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchesProductCopyWith<$Res> {
  factory $PurchesProductCopyWith(
          PurchesProduct value, $Res Function(PurchesProduct) then) =
      _$PurchesProductCopyWithImpl<$Res, PurchesProduct>;
  @useResult
  $Res call({int productId, double price, double totalPrice, int quantity});
}

/// @nodoc
class _$PurchesProductCopyWithImpl<$Res, $Val extends PurchesProduct>
    implements $PurchesProductCopyWith<$Res> {
  _$PurchesProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? price = null,
    Object? totalPrice = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PurchesProductImplCopyWith<$Res>
    implements $PurchesProductCopyWith<$Res> {
  factory _$$PurchesProductImplCopyWith(_$PurchesProductImpl value,
          $Res Function(_$PurchesProductImpl) then) =
      __$$PurchesProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int productId, double price, double totalPrice, int quantity});
}

/// @nodoc
class __$$PurchesProductImplCopyWithImpl<$Res>
    extends _$PurchesProductCopyWithImpl<$Res, _$PurchesProductImpl>
    implements _$$PurchesProductImplCopyWith<$Res> {
  __$$PurchesProductImplCopyWithImpl(
      _$PurchesProductImpl _value, $Res Function(_$PurchesProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? price = null,
    Object? totalPrice = null,
    Object? quantity = null,
  }) {
    return _then(_$PurchesProductImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PurchesProductImpl implements _PurchesProduct {
  const _$PurchesProductImpl(
      {required this.productId,
      required this.price,
      required this.totalPrice,
      required this.quantity});

  factory _$PurchesProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurchesProductImplFromJson(json);

  @override
  final int productId;
  @override
  final double price;
  @override
  final double totalPrice;
  @override
  final int quantity;

  @override
  String toString() {
    return 'PurchesProduct(productId: $productId, price: $price, totalPrice: $totalPrice, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchesProductImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, productId, price, totalPrice, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchesProductImplCopyWith<_$PurchesProductImpl> get copyWith =>
      __$$PurchesProductImplCopyWithImpl<_$PurchesProductImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PurchesProductImplToJson(
      this,
    );
  }
}

abstract class _PurchesProduct implements PurchesProduct {
  const factory _PurchesProduct(
      {required final int productId,
      required final double price,
      required final double totalPrice,
      required final int quantity}) = _$PurchesProductImpl;

  factory _PurchesProduct.fromJson(Map<String, dynamic> json) =
      _$PurchesProductImpl.fromJson;

  @override
  int get productId;
  @override
  double get price;
  @override
  double get totalPrice;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$PurchesProductImplCopyWith<_$PurchesProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Purches _$PurchesFromJson(Map<String, dynamic> json) {
  return _Purches.fromJson(json);
}

/// @nodoc
mixin _$Purches {
  int? get id => throw _privateConstructorUsedError;
  int? get supplierId => throw _privateConstructorUsedError;
  double get paymentAmount => throw _privateConstructorUsedError;
  List<PurchesProduct> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchesCopyWith<Purches> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchesCopyWith<$Res> {
  factory $PurchesCopyWith(Purches value, $Res Function(Purches) then) =
      _$PurchesCopyWithImpl<$Res, Purches>;
  @useResult
  $Res call(
      {int? id,
      int? supplierId,
      double paymentAmount,
      List<PurchesProduct> products});
}

/// @nodoc
class _$PurchesCopyWithImpl<$Res, $Val extends Purches>
    implements $PurchesCopyWith<$Res> {
  _$PurchesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? supplierId = freezed,
    Object? paymentAmount = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      supplierId: freezed == supplierId
          ? _value.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<PurchesProduct>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PurchesImplCopyWith<$Res> implements $PurchesCopyWith<$Res> {
  factory _$$PurchesImplCopyWith(
          _$PurchesImpl value, $Res Function(_$PurchesImpl) then) =
      __$$PurchesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? supplierId,
      double paymentAmount,
      List<PurchesProduct> products});
}

/// @nodoc
class __$$PurchesImplCopyWithImpl<$Res>
    extends _$PurchesCopyWithImpl<$Res, _$PurchesImpl>
    implements _$$PurchesImplCopyWith<$Res> {
  __$$PurchesImplCopyWithImpl(
      _$PurchesImpl _value, $Res Function(_$PurchesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? supplierId = freezed,
    Object? paymentAmount = null,
    Object? products = null,
  }) {
    return _then(_$PurchesImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      supplierId: freezed == supplierId
          ? _value.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<PurchesProduct>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PurchesImpl implements _Purches {
  const _$PurchesImpl(
      {this.id,
      this.supplierId,
      this.paymentAmount = 0,
      final List<PurchesProduct> products = const <PurchesProduct>[]})
      : _products = products;

  factory _$PurchesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurchesImplFromJson(json);

  @override
  final int? id;
  @override
  final int? supplierId;
  @override
  @JsonKey()
  final double paymentAmount;
  final List<PurchesProduct> _products;
  @override
  @JsonKey()
  List<PurchesProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'Purches(id: $id, supplierId: $supplierId, paymentAmount: $paymentAmount, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.supplierId, supplierId) ||
                other.supplierId == supplierId) &&
            (identical(other.paymentAmount, paymentAmount) ||
                other.paymentAmount == paymentAmount) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, supplierId, paymentAmount,
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchesImplCopyWith<_$PurchesImpl> get copyWith =>
      __$$PurchesImplCopyWithImpl<_$PurchesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PurchesImplToJson(
      this,
    );
  }
}

abstract class _Purches implements Purches {
  const factory _Purches(
      {final int? id,
      final int? supplierId,
      final double paymentAmount,
      final List<PurchesProduct> products}) = _$PurchesImpl;

  factory _Purches.fromJson(Map<String, dynamic> json) = _$PurchesImpl.fromJson;

  @override
  int? get id;
  @override
  int? get supplierId;
  @override
  double get paymentAmount;
  @override
  List<PurchesProduct> get products;
  @override
  @JsonKey(ignore: true)
  _$$PurchesImplCopyWith<_$PurchesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PurchesResponse _$PurchesResponseFromJson(Map<String, dynamic> json) {
  return _PurchesResponse.fromJson(json);
}

/// @nodoc
mixin _$PurchesResponse {
  int? get id => throw _privateConstructorUsedError;
  int? get supplierId => throw _privateConstructorUsedError;
  double get paymentAmount => throw _privateConstructorUsedError;
  List<PurchesProduct> get products => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  SupplierModel? get supplier => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchesResponseCopyWith<PurchesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchesResponseCopyWith<$Res> {
  factory $PurchesResponseCopyWith(
          PurchesResponse value, $Res Function(PurchesResponse) then) =
      _$PurchesResponseCopyWithImpl<$Res, PurchesResponse>;
  @useResult
  $Res call(
      {int? id,
      int? supplierId,
      double paymentAmount,
      List<PurchesProduct> products,
      DateTime? createdAt,
      DateTime? updatedAt,
      SupplierModel? supplier});

  $SupplierModelCopyWith<$Res>? get supplier;
}

/// @nodoc
class _$PurchesResponseCopyWithImpl<$Res, $Val extends PurchesResponse>
    implements $PurchesResponseCopyWith<$Res> {
  _$PurchesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? supplierId = freezed,
    Object? paymentAmount = null,
    Object? products = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? supplier = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      supplierId: freezed == supplierId
          ? _value.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<PurchesProduct>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      supplier: freezed == supplier
          ? _value.supplier
          : supplier // ignore: cast_nullable_to_non_nullable
              as SupplierModel?,
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
abstract class _$$PurchesResponseImplCopyWith<$Res>
    implements $PurchesResponseCopyWith<$Res> {
  factory _$$PurchesResponseImplCopyWith(_$PurchesResponseImpl value,
          $Res Function(_$PurchesResponseImpl) then) =
      __$$PurchesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? supplierId,
      double paymentAmount,
      List<PurchesProduct> products,
      DateTime? createdAt,
      DateTime? updatedAt,
      SupplierModel? supplier});

  @override
  $SupplierModelCopyWith<$Res>? get supplier;
}

/// @nodoc
class __$$PurchesResponseImplCopyWithImpl<$Res>
    extends _$PurchesResponseCopyWithImpl<$Res, _$PurchesResponseImpl>
    implements _$$PurchesResponseImplCopyWith<$Res> {
  __$$PurchesResponseImplCopyWithImpl(
      _$PurchesResponseImpl _value, $Res Function(_$PurchesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? supplierId = freezed,
    Object? paymentAmount = null,
    Object? products = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? supplier = freezed,
  }) {
    return _then(_$PurchesResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      supplierId: freezed == supplierId
          ? _value.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<PurchesProduct>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      supplier: freezed == supplier
          ? _value.supplier
          : supplier // ignore: cast_nullable_to_non_nullable
              as SupplierModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PurchesResponseImpl implements _PurchesResponse {
  const _$PurchesResponseImpl(
      {this.id,
      this.supplierId,
      this.paymentAmount = 0,
      final List<PurchesProduct> products = const <PurchesProduct>[],
      this.createdAt,
      this.updatedAt,
      this.supplier})
      : _products = products;

  factory _$PurchesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurchesResponseImplFromJson(json);

  @override
  final int? id;
  @override
  final int? supplierId;
  @override
  @JsonKey()
  final double paymentAmount;
  final List<PurchesProduct> _products;
  @override
  @JsonKey()
  List<PurchesProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final SupplierModel? supplier;

  @override
  String toString() {
    return 'PurchesResponse(id: $id, supplierId: $supplierId, paymentAmount: $paymentAmount, products: $products, createdAt: $createdAt, updatedAt: $updatedAt, supplier: $supplier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchesResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.supplierId, supplierId) ||
                other.supplierId == supplierId) &&
            (identical(other.paymentAmount, paymentAmount) ||
                other.paymentAmount == paymentAmount) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.supplier, supplier) ||
                other.supplier == supplier));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      supplierId,
      paymentAmount,
      const DeepCollectionEquality().hash(_products),
      createdAt,
      updatedAt,
      supplier);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchesResponseImplCopyWith<_$PurchesResponseImpl> get copyWith =>
      __$$PurchesResponseImplCopyWithImpl<_$PurchesResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PurchesResponseImplToJson(
      this,
    );
  }
}

abstract class _PurchesResponse implements PurchesResponse {
  const factory _PurchesResponse(
      {final int? id,
      final int? supplierId,
      final double paymentAmount,
      final List<PurchesProduct> products,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final SupplierModel? supplier}) = _$PurchesResponseImpl;

  factory _PurchesResponse.fromJson(Map<String, dynamic> json) =
      _$PurchesResponseImpl.fromJson;

  @override
  int? get id;
  @override
  int? get supplierId;
  @override
  double get paymentAmount;
  @override
  List<PurchesProduct> get products;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  SupplierModel? get supplier;
  @override
  @JsonKey(ignore: true)
  _$$PurchesResponseImplCopyWith<_$PurchesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
