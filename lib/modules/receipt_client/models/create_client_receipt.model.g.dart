// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_client_receipt.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateClientReceiptImpl _$$CreateClientReceiptImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateClientReceiptImpl(
      clientId: (json['clientId'] as num).toInt(),
      amount: json['amount'] as num,
      paymentDate: DateTime.parse(json['paymentDate'] as String),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$CreateClientReceiptImplToJson(
        _$CreateClientReceiptImpl instance) =>
    <String, dynamic>{
      'clientId': instance.clientId,
      'amount': instance.amount,
      'paymentDate': instance.paymentDate.toIso8601String(),
      'notes': instance.notes,
    };
