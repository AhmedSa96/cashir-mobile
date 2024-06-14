import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.model.freezed.dart';
part 'product.model.g.dart';

@freezed
class Product with _$Product {
  const Product._();
  const factory Product({
    int? id,
    required String name,
    required String description,
    required double price,
    required int stock,
    required String salePurchesType,
    required int changeQuantityValue,
    List<String>? image,
    // String? category,
    String? barcode,
    // DateTime? createdAt,
    // DateTime? updatedAt,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
