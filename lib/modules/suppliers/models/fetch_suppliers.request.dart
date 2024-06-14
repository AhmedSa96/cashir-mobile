import 'package:freezed_annotation/freezed_annotation.dart';

part 'fetch_suppliers.request.freezed.dart';
part 'fetch_suppliers.request.g.dart';

@freezed
class FetchSuppliersRequest with _$FetchSuppliersRequest {
  const factory FetchSuppliersRequest({
    String? search,
    DateTime? fromDate,
    DateTime? toDate,
    int? page,
    int? perPage,
  }) = _FetchSupplierRequest;

  factory FetchSuppliersRequest.fromJson(Map<String, dynamic> json) =>
      _$FetchSuppliersRequestFromJson(json);
}
