import 'package:cashir/modules/clients/models/client.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'receipt_client.model.freezed.dart';
part 'receipt_client.model.g.dart';

@freezed
class ClientReceipt with _$ClientReceipt {
  const factory ClientReceipt({
    required int id,
    required int clientId,
    ClientModel? client,
    required num amount,
    required DateTime paymentDate,
    String? notes,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _ClientReceipt;

  factory ClientReceipt.fromJson(Map<String, dynamic> json) =>
      _$ClientReceiptFromJson(json);
}
