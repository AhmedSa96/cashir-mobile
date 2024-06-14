import 'package:freezed_annotation/freezed_annotation.dart';

part 'constant_parent.model.freezed.dart';
part 'constant_parent.model.g.dart';

@freezed
class ConstantParentModel with _$ConstantParentModel {
  const factory ConstantParentModel({
    required int id,
    required String name,
  }) = _ConstantParentModel;

  factory ConstantParentModel.fromJson(Map<String, dynamic> json) =>
      _$ConstantParentModelFromJson(json);
}
