// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      stock: (json['stock'] as num).toInt(),
      salePurchesType: json['salePurchesType'] as String,
      changeQuantityValue: (json['changeQuantityValue'] as num).toInt(),
      image:
          (json['image'] as List<dynamic>?)?.map((e) => e as String).toList(),
      barcode: json['barcode'] as String?,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'stock': instance.stock,
      'salePurchesType': instance.salePurchesType,
      'changeQuantityValue': instance.changeQuantityValue,
      'image': instance.image,
      'barcode': instance.barcode,
    };
