// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'constant_parent.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConstantParentModel _$ConstantParentModelFromJson(Map<String, dynamic> json) {
  return _ConstantParentModel.fromJson(json);
}

/// @nodoc
mixin _$ConstantParentModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConstantParentModelCopyWith<ConstantParentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConstantParentModelCopyWith<$Res> {
  factory $ConstantParentModelCopyWith(
          ConstantParentModel value, $Res Function(ConstantParentModel) then) =
      _$ConstantParentModelCopyWithImpl<$Res, ConstantParentModel>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$ConstantParentModelCopyWithImpl<$Res, $Val extends ConstantParentModel>
    implements $ConstantParentModelCopyWith<$Res> {
  _$ConstantParentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConstantParentModelImplCopyWith<$Res>
    implements $ConstantParentModelCopyWith<$Res> {
  factory _$$ConstantParentModelImplCopyWith(_$ConstantParentModelImpl value,
          $Res Function(_$ConstantParentModelImpl) then) =
      __$$ConstantParentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$ConstantParentModelImplCopyWithImpl<$Res>
    extends _$ConstantParentModelCopyWithImpl<$Res, _$ConstantParentModelImpl>
    implements _$$ConstantParentModelImplCopyWith<$Res> {
  __$$ConstantParentModelImplCopyWithImpl(_$ConstantParentModelImpl _value,
      $Res Function(_$ConstantParentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$ConstantParentModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConstantParentModelImpl implements _ConstantParentModel {
  const _$ConstantParentModelImpl({required this.id, required this.name});

  factory _$ConstantParentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConstantParentModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'ConstantParentModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConstantParentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConstantParentModelImplCopyWith<_$ConstantParentModelImpl> get copyWith =>
      __$$ConstantParentModelImplCopyWithImpl<_$ConstantParentModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConstantParentModelImplToJson(
      this,
    );
  }
}

abstract class _ConstantParentModel implements ConstantParentModel {
  const factory _ConstantParentModel(
      {required final int id,
      required final String name}) = _$ConstantParentModelImpl;

  factory _ConstantParentModel.fromJson(Map<String, dynamic> json) =
      _$ConstantParentModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$ConstantParentModelImplCopyWith<_$ConstantParentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
