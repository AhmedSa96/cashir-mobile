import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_result.model.freezed.dart';
part 'search_result.model.g.dart';

@freezed
class SearchResult with _$SearchResult {
  const factory SearchResult({
    int? id,
    required String name,
  }) = _SearchResult;

  factory SearchResult.fromJson(Map<String, dynamic> json) =>
      _$SearchResultFromJson(json);
}
