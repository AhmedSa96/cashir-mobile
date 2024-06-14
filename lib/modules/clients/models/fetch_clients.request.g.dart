// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_clients.request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FetchClientsRequestImpl _$$FetchClientsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$FetchClientsRequestImpl(
      search: json['search'] as String?,
      fromDate: json['fromDate'] == null
          ? null
          : DateTime.parse(json['fromDate'] as String),
      toDate: json['toDate'] == null
          ? null
          : DateTime.parse(json['toDate'] as String),
      page: (json['page'] as num?)?.toInt() ?? 1,
      perPage: (json['perPage'] as num?)?.toInt() ?? 10,
    );

Map<String, dynamic> _$$FetchClientsRequestImplToJson(
        _$FetchClientsRequestImpl instance) =>
    <String, dynamic>{
      'search': instance.search,
      'fromDate': instance.fromDate?.toIso8601String(),
      'toDate': instance.toDate?.toIso8601String(),
      'page': instance.page,
      'perPage': instance.perPage,
    };
