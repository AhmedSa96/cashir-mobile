// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purches.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PurchesProductImpl _$$PurchesProductImplFromJson(Map<String, dynamic> json) =>
    _$PurchesProductImpl(
      productId: (json['productId'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
      totalPrice: (json['totalPrice'] as num).toDouble(),
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$$PurchesProductImplToJson(
        _$PurchesProductImpl instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'price': instance.price,
      'totalPrice': instance.totalPrice,
      'quantity': instance.quantity,
    };

_$PurchesImpl _$$PurchesImplFromJson(Map<String, dynamic> json) =>
    _$PurchesImpl(
      id: (json['id'] as num?)?.toInt(),
      supplierId: (json['supplierId'] as num?)?.toInt(),
      paymentAmount: (json['paymentAmount'] as num?)?.toDouble() ?? 0,
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => PurchesProduct.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <PurchesProduct>[],
    );

Map<String, dynamic> _$$PurchesImplToJson(_$PurchesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'supplierId': instance.supplierId,
      'paymentAmount': instance.paymentAmount,
      'products': instance.products,
    };

_$PurchesResponseImpl _$$PurchesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PurchesResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      supplierId: (json['supplierId'] as num?)?.toInt(),
      paymentAmount: (json['paymentAmount'] as num?)?.toDouble() ?? 0,
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => PurchesProduct.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <PurchesProduct>[],
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      supplier: json['supplier'] == null
          ? null
          : SupplierModel.fromJson(json['supplier'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PurchesResponseImplToJson(
        _$PurchesResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'supplierId': instance.supplierId,
      'paymentAmount': instance.paymentAmount,
      'products': instance.products,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'supplier': instance.supplier,
    };
