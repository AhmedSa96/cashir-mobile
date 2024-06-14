import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'product.model.dart';

part 'product.table.freezed.dart';

@freezed
class ProductTable with _$ProductTable {
  const ProductTable._();
  const factory ProductTable({
    int? id,
    String? barcode,
    String? data,
  }) = _ProductTable;

  factory ProductTable.fromProduct(Product product) {
    return ProductTable(
      id: product.id,
      barcode: product.barcode,
      data: jsonEncode(product.toJson()),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "barcode": barcode,
      "data": data,
    };
  }
}
