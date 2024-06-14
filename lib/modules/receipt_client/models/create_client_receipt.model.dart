import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_client_receipt.model.freezed.dart';
part 'create_client_receipt.model.g.dart';

@freezed
class CreateClientReceipt with _$CreateClientReceipt {
  const factory CreateClientReceipt({
    required int clientId,
    required num amount,
    required DateTime paymentDate,
    String? notes,
  }) = _CreateClientReceipt;

  factory CreateClientReceipt.fromJson(Map<String, dynamic> json) =>
      _$CreateClientReceiptFromJson(json);
}
