// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_purcheses.request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FetchPurchesesRequestImpl _$$FetchPurchesesRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$FetchPurchesesRequestImpl(
      idLike: (json['idLike'] as num?)?.toInt(),
      fromDate: json['fromDate'] == null
          ? null
          : DateTime.parse(json['fromDate'] as String),
      toDate: json['toDate'] == null
          ? null
          : DateTime.parse(json['toDate'] as String),
      page: (json['page'] as num?)?.toInt() ?? 1,
      perPage: (json['perPage'] as num?)?.toInt() ?? 15,
    );

Map<String, dynamic> _$$FetchPurchesesRequestImplToJson(
        _$FetchPurchesesRequestImpl instance) =>
    <String, dynamic>{
      'idLike': instance.idLike,
      'fromDate': instance.fromDate?.toIso8601String(),
      'toDate': instance.toDate?.toIso8601String(),
      'page': instance.page,
      'perPage': instance.perPage,
    };
