// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientModelImpl _$$ClientModelImplFromJson(Map<String, dynamic> json) =>
    _$ClientModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      prevAmount: (json['prevAmount'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$ClientModelImplToJson(_$ClientModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'address': instance.address,
      'prevAmount': instance.prevAmount,
    };
