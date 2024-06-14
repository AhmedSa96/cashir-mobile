import 'package:freezed_annotation/freezed_annotation.dart';

part 'supplier.model.freezed.dart';
part 'supplier.model.g.dart';

@freezed
class SupplierModel with _$SupplierModel {
  const factory SupplierModel({
    required int? id,
    required String name,
    required String? phone,
    required String? address,
    @Default(0) double prevAmount,
    // required DateTime? createdAt,
    // required DateTime? updatedAt,
  }) = _SupplierModel;

  factory SupplierModel.fromJson(Map<String, dynamic> json) =>
      _$SupplierModelFromJson(json);
}
