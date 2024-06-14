import 'package:cashir/modules/purcheses/models/purches.model.dart';
import 'package:cashir/modules/receipt-supplier/models/receipt_supplier.model.dart';
import 'package:cashir/modules/receipt_client/models/receipt_client.model.dart';
import 'package:cashir/modules/sales/models/sale.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_data.model.freezed.dart';
part 'dashboard_data.model.g.dart';

@freezed
class SalesResponseForDashboard with _$SalesResponseForDashboard {
  const factory SalesResponseForDashboard({
    required List<SaleResponse> orders,
    required int count,
  }) = _SalesResponseForDashboard;

  factory SalesResponseForDashboard.fromJson(Map<String, dynamic> json) =>
      _$SalesResponseForDashboardFromJson(json);
}

@freezed
class PurchsesResponseForDashboard with _$PurchsesResponseForDashboard {
  const factory PurchsesResponseForDashboard({
    required List<PurchesResponse> orders,
    required int count,
  }) = _PurchsesResponseForDashboard;

  factory PurchsesResponseForDashboard.fromJson(Map<String, dynamic> json) =>
      _$PurchsesResponseForDashboardFromJson(json);
}

@freezed
class ClientReceiptsResponseForDashboard
    with _$ClientReceiptsResponseForDashboard {
  const factory ClientReceiptsResponseForDashboard({
    required List<ClientReceipt> orders,
    required int count,
  }) = _ClientReceiptsResponseForDashboard;

  factory ClientReceiptsResponseForDashboard.fromJson(
          Map<String, dynamic> json) =>
      _$ClientReceiptsResponseForDashboardFromJson(json);
}

@freezed
class SupplierReceiptsResponseForDashboard
    with _$SupplierReceiptsResponseForDashboard {
  const factory SupplierReceiptsResponseForDashboard({
    required List<SupplierReceipt> orders,
    required int count,
  }) = _SupplierReceiptsResponseForDashboard;

  factory SupplierReceiptsResponseForDashboard.fromJson(
          Map<String, dynamic> json) =>
      _$SupplierReceiptsResponseForDashboardFromJson(json);
}

@freezed
class DashboardData with _$DashboardData {
  const factory DashboardData({
    required SalesResponseForDashboard sales,
    required PurchsesResponseForDashboard purcheses,
    required ClientReceiptsResponseForDashboard clientReceipts,
    required SupplierReceiptsResponseForDashboard supplierReceipts,
  }) = _DashboardData;

  factory DashboardData.fromJson(Map<String, dynamic> json) =>
      _$DashboardDataFromJson(json);
}
