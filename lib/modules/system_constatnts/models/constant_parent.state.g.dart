// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'constant_parent.state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConstantParentStateImpl _$$ConstantParentStateImplFromJson(
        Map<String, dynamic> json) =>
    _$ConstantParentStateImpl(
      isLoading: json['isLoading'] as bool,
      parents: (json['parents'] as List<dynamic>)
          .map((e) => ConstantParentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ConstantParentStateImplToJson(
        _$ConstantParentStateImpl instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'parents': instance.parents,
    };
