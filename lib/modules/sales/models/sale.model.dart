import 'package:cashir/modules/clients/models/client.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sale.model.freezed.dart';
part 'sale.model.g.dart';

@freezed
class SaleProduct with _$SaleProduct {
  const factory SaleProduct({
    required int productId,
    required double price,
    required double totalPrice,
    required int quantity,
  }) = _SaleProduct;

  factory SaleProduct.fromJson(Map<String, dynamic> json) =>
      _$SaleProductFromJson(json);
}

@freezed
class Sale with _$Sale {
  const factory Sale({
    int? id,
    int? clientId,
    @Default(0) double paymentAmount,
    @Default(<SaleProduct>[]) List<SaleProduct> products,
    // String? createdAt,
    // String? updatedAt,
    // ClientModel? client,
  }) = _Sale;

  factory Sale.fromJson(Map<String, dynamic> json) => _$SaleFromJson(json);
}

@freezed
class SaleResponse with _$SaleResponse {
  const factory SaleResponse({
    int? id,
    int? clientId,
    @Default(0) double paymentAmount,
    @Default(<SaleProduct>[]) List<SaleProduct> products,
    DateTime? createdAt,
    DateTime? updatedAt,
    ClientModel? client,
  }) = _SaleResponse;

  factory SaleResponse.fromJson(Map<String, dynamic> json) =>
      _$SaleResponseFromJson(json);
}
