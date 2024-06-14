import 'package:freezed_annotation/freezed_annotation.dart';

part 'fetch_client_receipts.request.freezed.dart';
part 'fetch_client_receipts.request.g.dart';

@freezed
class FetchClientReceiptsRequest with _$FetchClientReceiptsRequest {
  const factory FetchClientReceiptsRequest({
    int? clientId,
    DateTime? fromDate,
    DateTime? toDate,
    @Default(1) int page,
    @Default(10) int perPage,
  }) = _FetchClientReceiptsRequest;

  factory FetchClientReceiptsRequest.fromJson(Map<String, dynamic> json) =>
      _$FetchClientReceiptsRequestFromJson(json);
}
