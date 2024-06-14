import 'package:freezed_annotation/freezed_annotation.dart';

part 'fetch_clients.request.freezed.dart';
part 'fetch_clients.request.g.dart';

@freezed
class FetchClientsRequest with _$FetchClientsRequest {
  const factory FetchClientsRequest({
    String? search,
    DateTime? fromDate,
    DateTime? toDate,
    @Default(1) int page,
    @Default(10) int perPage,
  }) = _FetchClientsRequest;

  factory FetchClientsRequest.fromJson(Map<String, dynamic> json) =>
      _$FetchClientsRequestFromJson(json);
}
