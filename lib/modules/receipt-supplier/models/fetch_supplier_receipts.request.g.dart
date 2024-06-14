// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_supplier_receipts.request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FetchSupplierReceiptsRequestImpl _$$FetchSupplierReceiptsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$FetchSupplierReceiptsRequestImpl(
      supplierId: (json['supplierId'] as num?)?.toInt(),
      fromDate: json['fromDate'] == null
          ? null
          : DateTime.parse(json['fromDate'] as String),
      toDate: json['toDate'] == null
          ? null
          : DateTime.parse(json['toDate'] as String),
      page: (json['page'] as num?)?.toInt() ?? 1,
      perPage: (json['perPage'] as num?)?.toInt() ?? 10,
    );

Map<String, dynamic> _$$FetchSupplierReceiptsRequestImplToJson(
        _$FetchSupplierReceiptsRequestImpl instance) =>
    <String, dynamic>{
      'supplierId': instance.supplierId,
      'fromDate': instance.fromDate?.toIso8601String(),
      'toDate': instance.toDate?.toIso8601String(),
      'page': instance.page,
      'perPage': instance.perPage,
    };
