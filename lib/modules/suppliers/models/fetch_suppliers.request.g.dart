// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_suppliers.request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FetchSupplierRequestImpl _$$FetchSupplierRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$FetchSupplierRequestImpl(
      search: json['search'] as String?,
      fromDate: json['fromDate'] == null
          ? null
          : DateTime.parse(json['fromDate'] as String),
      toDate: json['toDate'] == null
          ? null
          : DateTime.parse(json['toDate'] as String),
      page: (json['page'] as num?)?.toInt(),
      perPage: (json['perPage'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$FetchSupplierRequestImplToJson(
        _$FetchSupplierRequestImpl instance) =>
    <String, dynamic>{
      'search': instance.search,
      'fromDate': instance.fromDate?.toIso8601String(),
      'toDate': instance.toDate?.toIso8601String(),
      'page': instance.page,
      'perPage': instance.perPage,
    };
