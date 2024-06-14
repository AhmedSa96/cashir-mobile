// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_supplier_receipt.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateSupplierReceiptImpl _$$CreateSupplierReceiptImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateSupplierReceiptImpl(
      supplierId: (json['supplierId'] as num).toInt(),
      amount: json['amount'] as num,
      paymentDate: DateTime.parse(json['paymentDate'] as String),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$CreateSupplierReceiptImplToJson(
        _$CreateSupplierReceiptImpl instance) =>
    <String, dynamic>{
      'supplierId': instance.supplierId,
      'amount': instance.amount,
      'paymentDate': instance.paymentDate.toIso8601String(),
      'notes': instance.notes,
    };
