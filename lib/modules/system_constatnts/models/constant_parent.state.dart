import 'package:freezed_annotation/freezed_annotation.dart';

import 'constant_parent.model.dart';

part 'constant_parent.state.freezed.dart';
part 'constant_parent.state.g.dart';

@freezed
class ConstantParentState with _$ConstantParentState {
  const factory ConstantParentState({
    required bool isLoading,
    required List<ConstantParentModel> parents,
  }) = _ConstantParentState;

  factory ConstantParentState.fromJson(Map<String, dynamic> json) =>
      _$ConstantParentStateFromJson(json);
}
