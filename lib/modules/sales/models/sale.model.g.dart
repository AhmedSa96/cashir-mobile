// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaleProductImpl _$$SaleProductImplFromJson(Map<String, dynamic> json) =>
    _$SaleProductImpl(
      productId: (json['productId'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
      totalPrice: (json['totalPrice'] as num).toDouble(),
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$$SaleProductImplToJson(_$SaleProductImpl instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'price': instance.price,
      'totalPrice': instance.totalPrice,
      'quantity': instance.quantity,
    };

_$SaleImpl _$$SaleImplFromJson(Map<String, dynamic> json) => _$SaleImpl(
      id: (json['id'] as num?)?.toInt(),
      clientId: (json['clientId'] as num?)?.toInt(),
      paymentAmount: (json['paymentAmount'] as num?)?.toDouble() ?? 0,
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => SaleProduct.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <SaleProduct>[],
    );

Map<String, dynamic> _$$SaleImplToJson(_$SaleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'clientId': instance.clientId,
      'paymentAmount': instance.paymentAmount,
      'products': instance.products,
    };

_$SaleResponseImpl _$$SaleResponseImplFromJson(Map<String, dynamic> json) =>
    _$SaleResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      clientId: (json['clientId'] as num?)?.toInt(),
      paymentAmount: (json['paymentAmount'] as num?)?.toDouble() ?? 0,
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => SaleProduct.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <SaleProduct>[],
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      client: json['client'] == null
          ? null
          : ClientModel.fromJson(json['client'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SaleResponseImplToJson(_$SaleResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'clientId': instance.clientId,
      'paymentAmount': instance.paymentAmount,
      'products': instance.products,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'client': instance.client,
    };
