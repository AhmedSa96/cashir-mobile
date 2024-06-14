import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_data.model.freezed.dart';
part 'paginated_data.model.g.dart';

@freezed
class PaginatedDataMeta with _$PaginatedDataMeta {
  const factory PaginatedDataMeta({
    required int? nextPage,
    required int? prevPage,
    required int totalCount,
    required int currentPage,
    required int pageLimit,
  }) = _PaginatedDataMeta;

  factory PaginatedDataMeta.fromJson(Map<String, dynamic> json) =>
      _$PaginatedDataMetaFromJson(json);
}

@freezed
class PaginatedData<T> with _$PaginatedData {
  const factory PaginatedData({
    required List<T> data,
    PaginatedDataMeta? meta,
  }) = _PaginatedData;

  factory PaginatedData.fromJson({
    required Map<String, dynamic> json,
    required T Function(Map<String, dynamic>) fromJson,
  }) {
    return PaginatedData(
      data: json["data"].map<T>((item) => fromJson(item)).toList(),
      meta: PaginatedDataMeta.fromJson(json["meta"]),
    );
  }

  factory PaginatedData.empty() {
    return const PaginatedData(data: [], meta: null);
  }
}
