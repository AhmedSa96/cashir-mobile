// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_supplier.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SupplierReceiptImpl _$$SupplierReceiptImplFromJson(
        Map<String, dynamic> json) =>
    _$SupplierReceiptImpl(
      id: (json['id'] as num).toInt(),
      supplierId: (json['supplierId'] as num).toInt(),
      supplier: json['supplier'] == null
          ? null
          : SupplierModel.fromJson(json['supplier'] as Map<String, dynamic>),
      amount: json['amount'] as num,
      paymentDate: DateTime.parse(json['paymentDate'] as String),
      notes: json['notes'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$SupplierReceiptImplToJson(
        _$SupplierReceiptImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'supplierId': instance.supplierId,
      'supplier': instance.supplier,
      'amount': instance.amount,
      'paymentDate': instance.paymentDate.toIso8601String(),
      'notes': instance.notes,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
