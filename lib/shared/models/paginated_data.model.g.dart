// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_data.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginatedDataMetaImpl _$$PaginatedDataMetaImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginatedDataMetaImpl(
      nextPage: (json['nextPage'] as num?)?.toInt(),
      prevPage: (json['prevPage'] as num?)?.toInt(),
      totalCount: (json['totalCount'] as num).toInt(),
      currentPage: (json['currentPage'] as num).toInt(),
      pageLimit: (json['pageLimit'] as num).toInt(),
    );

Map<String, dynamic> _$$PaginatedDataMetaImplToJson(
        _$PaginatedDataMetaImpl instance) =>
    <String, dynamic>{
      'nextPage': instance.nextPage,
      'prevPage': instance.prevPage,
      'totalCount': instance.totalCount,
      'currentPage': instance.currentPage,
      'pageLimit': instance.pageLimit,
    };
