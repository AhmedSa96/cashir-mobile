import 'package:cashir/modules/suppliers/models/supplier.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'purches.model.freezed.dart';
part 'purches.model.g.dart';

@freezed
class PurchesProduct with _$PurchesProduct {
  const factory PurchesProduct({
    required int productId,
    required double price,
    required double totalPrice,
    required int quantity,
  }) = _PurchesProduct;

  factory PurchesProduct.fromJson(Map<String, dynamic> json) =>
      _$PurchesProductFromJson(json);
}

@freezed
class Purches with _$Purches {
  const factory Purches({
    int? id,
    int? supplierId,
    @Default(0) double paymentAmount,
    @Default(<PurchesProduct>[]) List<PurchesProduct> products,
  }) = _Purches;

  factory Purches.fromJson(Map<String, dynamic> json) =>
      _$PurchesFromJson(json);
}

@freezed
class PurchesResponse with _$PurchesResponse {
  const factory PurchesResponse({
    int? id,
    int? supplierId,
    @Default(0) double paymentAmount,
    @Default(<PurchesProduct>[]) List<PurchesProduct> products,
    DateTime? createdAt,
    DateTime? updatedAt,
    SupplierModel? supplier,
  }) = _PurchesResponse;

  factory PurchesResponse.fromJson(Map<String, dynamic> json) =>
      _$PurchesResponseFromJson(json);
}
