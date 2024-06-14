import 'package:freezed_annotation/freezed_annotation.dart';

part 'fetch_sales.request.freezed.dart';
part 'fetch_sales.request.g.dart';

@freezed
class FetchSalesRequest with _$FetchSalesRequest {
  const factory FetchSalesRequest({
    int? idLike,
    DateTime? fromDate,
    DateTime? toDate,
    @Default(1) int page,
    @Default(15) int perPage,
  }) = _FetchSalesRequest;

  factory FetchSalesRequest.fromJson(Map<String, dynamic> json) =>
      _$FetchSalesRequestFromJson(json);
}
