import 'package:cashir/modules/suppliers/models/supplier.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'receipt_supplier.model.freezed.dart';
part 'receipt_supplier.model.g.dart';

@freezed
class SupplierReceipt with _$SupplierReceipt {
  const factory SupplierReceipt({
    required int id,
    required int supplierId,
    SupplierModel? supplier,
    required num amount,
    required DateTime paymentDate,
    String? notes,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _SupplierReceipt;

  factory SupplierReceipt.fromJson(Map<String, dynamic> json) =>
      _$SupplierReceiptFromJson(json);
}
