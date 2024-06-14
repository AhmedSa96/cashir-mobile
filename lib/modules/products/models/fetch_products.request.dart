import 'package:freezed_annotation/freezed_annotation.dart';

part 'fetch_products.request.freezed.dart';
part 'fetch_products.request.g.dart';

@freezed
class FetchProductsRequest with _$FetchProductsRequest {
  const factory FetchProductsRequest({
    String? search,
    DateTime? fromDate,
    DateTime? toDate,
    @Default(1) int? page,
    @Default(10) int? perPage,
  }) = _FetchProductsRequest;

  factory FetchProductsRequest.fromJson(Map<String, dynamic> json) =>
      _$FetchProductsRequestFromJson(json);
}
