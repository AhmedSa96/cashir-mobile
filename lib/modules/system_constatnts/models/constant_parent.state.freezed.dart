// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'constant_parent.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConstantParentState _$ConstantParentStateFromJson(Map<String, dynamic> json) {
  return _ConstantParentState.fromJson(json);
}

/// @nodoc
mixin _$ConstantParentState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<ConstantParentModel> get parents => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConstantParentStateCopyWith<ConstantParentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConstantParentStateCopyWith<$Res> {
  factory $ConstantParentStateCopyWith(
          ConstantParentState value, $Res Function(ConstantParentState) then) =
      _$ConstantParentStateCopyWithImpl<$Res, ConstantParentState>;
  @useResult
  $Res call({bool isLoading, List<ConstantParentModel> parents});
}

/// @nodoc
class _$ConstantParentStateCopyWithImpl<$Res, $Val extends ConstantParentState>
    implements $ConstantParentStateCopyWith<$Res> {
  _$ConstantParentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? parents = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      parents: null == parents
          ? _value.parents
          : parents // ignore: cast_nullable_to_non_nullable
              as List<ConstantParentModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConstantParentStateImplCopyWith<$Res>
    implements $ConstantParentStateCopyWith<$Res> {
  factory _$$ConstantParentStateImplCopyWith(_$ConstantParentStateImpl value,
          $Res Function(_$ConstantParentStateImpl) then) =
      __$$ConstantParentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<ConstantParentModel> parents});
}

/// @nodoc
class __$$ConstantParentStateImplCopyWithImpl<$Res>
    extends _$ConstantParentStateCopyWithImpl<$Res, _$ConstantParentStateImpl>
    implements _$$ConstantParentStateImplCopyWith<$Res> {
  __$$ConstantParentStateImplCopyWithImpl(_$ConstantParentStateImpl _value,
      $Res Function(_$ConstantParentStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? parents = null,
  }) {
    return _then(_$ConstantParentStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      parents: null == parents
          ? _value._parents
          : parents // ignore: cast_nullable_to_non_nullable
              as List<ConstantParentModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConstantParentStateImpl implements _ConstantParentState {
  const _$ConstantParentStateImpl(
      {required this.isLoading,
      required final List<ConstantParentModel> parents})
      : _parents = parents;

  factory _$ConstantParentStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConstantParentStateImplFromJson(json);

  @override
  final bool isLoading;
  final List<ConstantParentModel> _parents;
  @override
  List<ConstantParentModel> get parents {
    if (_parents is EqualUnmodifiableListView) return _parents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parents);
  }

  @override
  String toString() {
    return 'ConstantParentState(isLoading: $isLoading, parents: $parents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConstantParentStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._parents, _parents));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, const DeepCollectionEquality().hash(_parents));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConstantParentStateImplCopyWith<_$ConstantParentStateImpl> get copyWith =>
      __$$ConstantParentStateImplCopyWithImpl<_$ConstantParentStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConstantParentStateImplToJson(
      this,
    );
  }
}

abstract class _ConstantParentState implements ConstantParentState {
  const factory _ConstantParentState(
          {required final bool isLoading,
          required final List<ConstantParentModel> parents}) =
      _$ConstantParentStateImpl;

  factory _ConstantParentState.fromJson(Map<String, dynamic> json) =
      _$ConstantParentStateImpl.fromJson;

  @override
  bool get isLoading;
  @override
  List<ConstantParentModel> get parents;
  @override
  @JsonKey(ignore: true)
  _$$ConstantParentStateImplCopyWith<_$ConstantParentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
