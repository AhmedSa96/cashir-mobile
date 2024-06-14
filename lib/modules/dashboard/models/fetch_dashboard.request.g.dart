// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_dashboard.request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FetchDashboardRequestImpl _$$FetchDashboardRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$FetchDashboardRequestImpl(
      fromDate: json['fromDate'] == null
          ? null
          : DateTime.parse(json['fromDate'] as String),
      toDate: json['toDate'] == null
          ? null
          : DateTime.parse(json['toDate'] as String),
    );

Map<String, dynamic> _$$FetchDashboardRequestImplToJson(
        _$FetchDashboardRequestImpl instance) =>
    <String, dynamic>{
      'fromDate': instance.fromDate?.toIso8601String(),
      'toDate': instance.toDate?.toIso8601String(),
    };
