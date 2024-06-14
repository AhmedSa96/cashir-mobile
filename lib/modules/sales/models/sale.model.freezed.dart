// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SaleProduct _$SaleProductFromJson(Map<String, dynamic> json) {
  return _SaleProduct.fromJson(json);
}

/// @nodoc
mixin _$SaleProduct {
  int get productId => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaleProductCopyWith<SaleProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleProductCopyWith<$Res> {
  factory $SaleProductCopyWith(
          SaleProduct value, $Res Function(SaleProduct) then) =
      _$SaleProductCopyWithImpl<$Res, SaleProduct>;
  @useResult
  $Res call({int productId, double price, double totalPrice, int quantity});
}

/// @nodoc
class _$SaleProductCopyWithImpl<$Res, $Val extends SaleProduct>
    implements $SaleProductCopyWith<$Res> {
  _$SaleProductCopyWithImpl(this._value, this._then);

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
abstract class _$$SaleProductImplCopyWith<$Res>
    implements $SaleProductCopyWith<$Res> {
  factory _$$SaleProductImplCopyWith(
          _$SaleProductImpl value, $Res Function(_$SaleProductImpl) then) =
      __$$SaleProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int productId, double price, double totalPrice, int quantity});
}

/// @nodoc
class __$$SaleProductImplCopyWithImpl<$Res>
    extends _$SaleProductCopyWithImpl<$Res, _$SaleProductImpl>
    implements _$$SaleProductImplCopyWith<$Res> {
  __$$SaleProductImplCopyWithImpl(
      _$SaleProductImpl _value, $Res Function(_$SaleProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? price = null,
    Object? totalPrice = null,
    Object? quantity = null,
  }) {
    return _then(_$SaleProductImpl(
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
class _$SaleProductImpl implements _SaleProduct {
  const _$SaleProductImpl(
      {required this.productId,
      required this.price,
      required this.totalPrice,
      required this.quantity});

  factory _$SaleProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaleProductImplFromJson(json);

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
    return 'SaleProduct(productId: $productId, price: $price, totalPrice: $totalPrice, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaleProductImpl &&
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
  _$$SaleProductImplCopyWith<_$SaleProductImpl> get copyWith =>
      __$$SaleProductImplCopyWithImpl<_$SaleProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaleProductImplToJson(
      this,
    );
  }
}

abstract class _SaleProduct implements SaleProduct {
  const factory _SaleProduct(
      {required final int productId,
      required final double price,
      required final double totalPrice,
      required final int quantity}) = _$SaleProductImpl;

  factory _SaleProduct.fromJson(Map<String, dynamic> json) =
      _$SaleProductImpl.fromJson;

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
  _$$SaleProductImplCopyWith<_$SaleProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Sale _$SaleFromJson(Map<String, dynamic> json) {
  return _Sale.fromJson(json);
}

/// @nodoc
mixin _$Sale {
  int? get id => throw _privateConstructorUsedError;
  int? get clientId => throw _privateConstructorUsedError;
  double get paymentAmount => throw _privateConstructorUsedError;
  List<SaleProduct> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaleCopyWith<Sale> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleCopyWith<$Res> {
  factory $SaleCopyWith(Sale value, $Res Function(Sale) then) =
      _$SaleCopyWithImpl<$Res, Sale>;
  @useResult
  $Res call(
      {int? id,
      int? clientId,
      double paymentAmount,
      List<SaleProduct> products});
}

/// @nodoc
class _$SaleCopyWithImpl<$Res, $Val extends Sale>
    implements $SaleCopyWith<$Res> {
  _$SaleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? clientId = freezed,
    Object? paymentAmount = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<SaleProduct>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SaleImplCopyWith<$Res> implements $SaleCopyWith<$Res> {
  factory _$$SaleImplCopyWith(
          _$SaleImpl value, $Res Function(_$SaleImpl) then) =
      __$$SaleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? clientId,
      double paymentAmount,
      List<SaleProduct> products});
}

/// @nodoc
class __$$SaleImplCopyWithImpl<$Res>
    extends _$SaleCopyWithImpl<$Res, _$SaleImpl>
    implements _$$SaleImplCopyWith<$Res> {
  __$$SaleImplCopyWithImpl(_$SaleImpl _value, $Res Function(_$SaleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? clientId = freezed,
    Object? paymentAmount = null,
    Object? products = null,
  }) {
    return _then(_$SaleImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<SaleProduct>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaleImpl implements _Sale {
  const _$SaleImpl(
      {this.id,
      this.clientId,
      this.paymentAmount = 0,
      final List<SaleProduct> products = const <SaleProduct>[]})
      : _products = products;

  factory _$SaleImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaleImplFromJson(json);

  @override
  final int? id;
  @override
  final int? clientId;
  @override
  @JsonKey()
  final double paymentAmount;
  final List<SaleProduct> _products;
  @override
  @JsonKey()
  List<SaleProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'Sale(id: $id, clientId: $clientId, paymentAmount: $paymentAmount, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.paymentAmount, paymentAmount) ||
                other.paymentAmount == paymentAmount) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, clientId, paymentAmount,
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaleImplCopyWith<_$SaleImpl> get copyWith =>
      __$$SaleImplCopyWithImpl<_$SaleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaleImplToJson(
      this,
    );
  }
}

abstract class _Sale implements Sale {
  const factory _Sale(
      {final int? id,
      final int? clientId,
      final double paymentAmount,
      final List<SaleProduct> products}) = _$SaleImpl;

  factory _Sale.fromJson(Map<String, dynamic> json) = _$SaleImpl.fromJson;

  @override
  int? get id;
  @override
  int? get clientId;
  @override
  double get paymentAmount;
  @override
  List<SaleProduct> get products;
  @override
  @JsonKey(ignore: true)
  _$$SaleImplCopyWith<_$SaleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SaleResponse _$SaleResponseFromJson(Map<String, dynamic> json) {
  return _SaleResponse.fromJson(json);
}

/// @nodoc
mixin _$SaleResponse {
  int? get id => throw _privateConstructorUsedError;
  int? get clientId => throw _privateConstructorUsedError;
  double get paymentAmount => throw _privateConstructorUsedError;
  List<SaleProduct> get products => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  ClientModel? get client => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaleResponseCopyWith<SaleResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleResponseCopyWith<$Res> {
  factory $SaleResponseCopyWith(
          SaleResponse value, $Res Function(SaleResponse) then) =
      _$SaleResponseCopyWithImpl<$Res, SaleResponse>;
  @useResult
  $Res call(
      {int? id,
      int? clientId,
      double paymentAmount,
      List<SaleProduct> products,
      DateTime? createdAt,
      DateTime? updatedAt,
      ClientModel? client});

  $ClientModelCopyWith<$Res>? get client;
}

/// @nodoc
class _$SaleResponseCopyWithImpl<$Res, $Val extends SaleResponse>
    implements $SaleResponseCopyWith<$Res> {
  _$SaleResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? clientId = freezed,
    Object? paymentAmount = null,
    Object? products = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? client = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<SaleProduct>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as ClientModel?,
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
abstract class _$$SaleResponseImplCopyWith<$Res>
    implements $SaleResponseCopyWith<$Res> {
  factory _$$SaleResponseImplCopyWith(
          _$SaleResponseImpl value, $Res Function(_$SaleResponseImpl) then) =
      __$$SaleResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? clientId,
      double paymentAmount,
      List<SaleProduct> products,
      DateTime? createdAt,
      DateTime? updatedAt,
      ClientModel? client});

  @override
  $ClientModelCopyWith<$Res>? get client;
}

/// @nodoc
class __$$SaleResponseImplCopyWithImpl<$Res>
    extends _$SaleResponseCopyWithImpl<$Res, _$SaleResponseImpl>
    implements _$$SaleResponseImplCopyWith<$Res> {
  __$$SaleResponseImplCopyWithImpl(
      _$SaleResponseImpl _value, $Res Function(_$SaleResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? clientId = freezed,
    Object? paymentAmount = null,
    Object? products = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? client = freezed,
  }) {
    return _then(_$SaleResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<SaleProduct>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as ClientModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaleResponseImpl implements _SaleResponse {
  const _$SaleResponseImpl(
      {this.id,
      this.clientId,
      this.paymentAmount = 0,
      final List<SaleProduct> products = const <SaleProduct>[],
      this.createdAt,
      this.updatedAt,
      this.client})
      : _products = products;

  factory _$SaleResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaleResponseImplFromJson(json);

  @override
  final int? id;
  @override
  final int? clientId;
  @override
  @JsonKey()
  final double paymentAmount;
  final List<SaleProduct> _products;
  @override
  @JsonKey()
  List<SaleProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final ClientModel? client;

  @override
  String toString() {
    return 'SaleResponse(id: $id, clientId: $clientId, paymentAmount: $paymentAmount, products: $products, createdAt: $createdAt, updatedAt: $updatedAt, client: $client)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaleResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.paymentAmount, paymentAmount) ||
                other.paymentAmount == paymentAmount) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.client, client) || other.client == client));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      clientId,
      paymentAmount,
      const DeepCollectionEquality().hash(_products),
      createdAt,
      updatedAt,
      client);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaleResponseImplCopyWith<_$SaleResponseImpl> get copyWith =>
      __$$SaleResponseImplCopyWithImpl<_$SaleResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaleResponseImplToJson(
      this,
    );
  }
}

abstract class _SaleResponse implements SaleResponse {
  const factory _SaleResponse(
      {final int? id,
      final int? clientId,
      final double paymentAmount,
      final List<SaleProduct> products,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final ClientModel? client}) = _$SaleResponseImpl;

  factory _SaleResponse.fromJson(Map<String, dynamic> json) =
      _$SaleResponseImpl.fromJson;

  @override
  int? get id;
  @override
  int? get clientId;
  @override
  double get paymentAmount;
  @override
  List<SaleProduct> get products;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  ClientModel? get client;
  @override
  @JsonKey(ignore: true)
  _$$SaleResponseImplCopyWith<_$SaleResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
