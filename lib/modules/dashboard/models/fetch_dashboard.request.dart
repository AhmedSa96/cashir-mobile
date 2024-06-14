import 'package:freezed_annotation/freezed_annotation.dart';

part 'fetch_dashboard.request.freezed.dart';
part 'fetch_dashboard.request.g.dart';

@freezed
class FetchDashboardRequest with _$FetchDashboardRequest {
  const factory FetchDashboardRequest({
    DateTime? fromDate,
    DateTime? toDate,
  }) = _FetchDashboardRequest;

  factory FetchDashboardRequest.fromJson(Map<String, dynamic> json) =>
      _$FetchDashboardRequestFromJson(json);
}
