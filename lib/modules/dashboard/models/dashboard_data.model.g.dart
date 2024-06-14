// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_data.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SalesResponseForDashboardImpl _$$SalesResponseForDashboardImplFromJson(
        Map<String, dynamic> json) =>
    _$SalesResponseForDashboardImpl(
      orders: (json['orders'] as List<dynamic>)
          .map((e) => SaleResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$$SalesResponseForDashboardImplToJson(
        _$SalesResponseForDashboardImpl instance) =>
    <String, dynamic>{
      'orders': instance.orders,
      'count': instance.count,
    };

_$PurchsesResponseForDashboardImpl _$$PurchsesResponseForDashboardImplFromJson(
        Map<String, dynamic> json) =>
    _$PurchsesResponseForDashboardImpl(
      orders: (json['orders'] as List<dynamic>)
          .map((e) => PurchesResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$$PurchsesResponseForDashboardImplToJson(
        _$PurchsesResponseForDashboardImpl instance) =>
    <String, dynamic>{
      'orders': instance.orders,
      'count': instance.count,
    };

_$ClientReceiptsResponseForDashboardImpl
    _$$ClientReceiptsResponseForDashboardImplFromJson(
            Map<String, dynamic> json) =>
        _$ClientReceiptsResponseForDashboardImpl(
          orders: (json['orders'] as List<dynamic>)
              .map((e) => ClientReceipt.fromJson(e as Map<String, dynamic>))
              .toList(),
          count: (json['count'] as num).toInt(),
        );

Map<String, dynamic> _$$ClientReceiptsResponseForDashboardImplToJson(
        _$ClientReceiptsResponseForDashboardImpl instance) =>
    <String, dynamic>{
      'orders': instance.orders,
      'count': instance.count,
    };

_$SupplierReceiptsResponseForDashboardImpl
    _$$SupplierReceiptsResponseForDashboardImplFromJson(
            Map<String, dynamic> json) =>
        _$SupplierReceiptsResponseForDashboardImpl(
          orders: (json['orders'] as List<dynamic>)
              .map((e) => SupplierReceipt.fromJson(e as Map<String, dynamic>))
              .toList(),
          count: (json['count'] as num).toInt(),
        );

Map<String, dynamic> _$$SupplierReceiptsResponseForDashboardImplToJson(
        _$SupplierReceiptsResponseForDashboardImpl instance) =>
    <String, dynamic>{
      'orders': instance.orders,
      'count': instance.count,
    };

_$DashboardDataImpl _$$DashboardDataImplFromJson(Map<String, dynamic> json) =>
    _$DashboardDataImpl(
      sales: SalesResponseForDashboard.fromJson(
          json['sales'] as Map<String, dynamic>),
      purcheses: PurchsesResponseForDashboard.fromJson(
          json['purcheses'] as Map<String, dynamic>),
      clientReceipts: ClientReceiptsResponseForDashboard.fromJson(
          json['clientReceipts'] as Map<String, dynamic>),
      supplierReceipts: SupplierReceiptsResponseForDashboard.fromJson(
          json['supplierReceipts'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DashboardDataImplToJson(_$DashboardDataImpl instance) =>
    <String, dynamic>{
      'sales': instance.sales,
      'purcheses': instance.purcheses,
      'clientReceipts': instance.clientReceipts,
      'supplierReceipts': instance.supplierReceipts,
    };
