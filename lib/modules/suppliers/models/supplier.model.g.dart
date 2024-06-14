// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplier.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SupplierModelImpl _$$SupplierModelImplFromJson(Map<String, dynamic> json) =>
    _$SupplierModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      prevAmount: (json['prevAmount'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$SupplierModelImplToJson(_$SupplierModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'address': instance.address,
      'prevAmount': instance.prevAmount,
    };
