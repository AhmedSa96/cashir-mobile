// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_client.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientReceiptImpl _$$ClientReceiptImplFromJson(Map<String, dynamic> json) =>
    _$ClientReceiptImpl(
      id: (json['id'] as num).toInt(),
      clientId: (json['clientId'] as num).toInt(),
      client: json['client'] == null
          ? null
          : ClientModel.fromJson(json['client'] as Map<String, dynamic>),
      amount: json['amount'] as num,
      paymentDate: DateTime.parse(json['paymentDate'] as String),
      notes: json['notes'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ClientReceiptImplToJson(_$ClientReceiptImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'clientId': instance.clientId,
      'client': instance.client,
      'amount': instance.amount,
      'paymentDate': instance.paymentDate.toIso8601String(),
      'notes': instance.notes,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
