import 'package:freezed_annotation/freezed_annotation.dart';

part 'fetch_supplier_receipts.request.freezed.dart';
part 'fetch_supplier_receipts.request.g.dart';

@freezed
class FetchSupplierReceiptsRequest with _$FetchSupplierReceiptsRequest {
  const factory FetchSupplierReceiptsRequest({
    int? supplierId,
    DateTime? fromDate,
    DateTime? toDate,
    @Default(1) int page,
    @Default(10) int perPage,
  }) = _FetchSupplierReceiptsRequest;

  factory FetchSupplierReceiptsRequest.fromJson(Map<String, dynamic> json) =>
      _$FetchSupplierReceiptsRequestFromJson(json);
}
