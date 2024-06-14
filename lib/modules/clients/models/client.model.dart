import 'package:freezed_annotation/freezed_annotation.dart';

part 'client.model.freezed.dart';
part 'client.model.g.dart';

@freezed
class ClientModel with _$ClientModel {
  const factory ClientModel({
    required int? id,
    required String name,
    required String? phone,
    required String? address,
    @Default(0) double prevAmount,
    // required String? createdAt,
    // required String? updatedAt,
  }) = _ClientModel;

  factory ClientModel.fromJson(Map<String, dynamic> json) =>
      _$ClientModelFromJson(json);
}
