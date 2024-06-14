// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_client_receipts.request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FetchClientReceiptsRequestImpl _$$FetchClientReceiptsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$FetchClientReceiptsRequestImpl(
      clientId: (json['clientId'] as num?)?.toInt(),
      fromDate: json['fromDate'] == null
          ? null
          : DateTime.parse(json['fromDate'] as String),
      toDate: json['toDate'] == null
          ? null
          : DateTime.parse(json['toDate'] as String),
      page: (json['page'] as num?)?.toInt() ?? 1,
      perPage: (json['perPage'] as num?)?.toInt() ?? 10,
    );

Map<String, dynamic> _$$FetchClientReceiptsRequestImplToJson(
        _$FetchClientReceiptsRequestImpl instance) =>
    <String, dynamic>{
      'clientId': instance.clientId,
      'fromDate': instance.fromDate?.toIso8601String(),
      'toDate': instance.toDate?.toIso8601String(),
      'page': instance.page,
      'perPage': instance.perPage,
    };
