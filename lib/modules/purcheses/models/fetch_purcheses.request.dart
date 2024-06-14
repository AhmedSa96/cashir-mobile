import 'package:freezed_annotation/freezed_annotation.dart';

part 'fetch_purcheses.request.freezed.dart';
part 'fetch_purcheses.request.g.dart';

@freezed
class FetchPurchesesRequest with _$FetchPurchesesRequest {
  const factory FetchPurchesesRequest({
    int? idLike,
    DateTime? fromDate,
    DateTime? toDate,
    @Default(1) int page,
    @Default(15) int perPage,
  }) = _FetchPurchesesRequest;

  factory FetchPurchesesRequest.fromJson(Map<String, dynamic> json) =>
      _$FetchPurchesesRequestFromJson(json);
}
