import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_supplier_receipt.model.freezed.dart';
part 'create_supplier_receipt.model.g.dart';

@freezed
class CreateSupplierReceipt with _$CreateSupplierReceipt {
  const factory CreateSupplierReceipt({
    required int supplierId,
    required num amount,
    required DateTime paymentDate,
    String? notes,
  }) = _CreateSupplierReceipt;

  factory CreateSupplierReceipt.fromJson(Map<String, dynamic> json) =>
      _$CreateSupplierReceiptFromJson(json);
}
