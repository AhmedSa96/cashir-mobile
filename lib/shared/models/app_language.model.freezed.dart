// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_language.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppLanguage {
  String get title => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppLanguageCopyWith<AppLanguage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppLanguageCopyWith<$Res> {
  factory $AppLanguageCopyWith(
          AppLanguage value, $Res Function(AppLanguage) then) =
      _$AppLanguageCopyWithImpl<$Res, AppLanguage>;
  @useResult
  $Res call({String title, String key});
}

/// @nodoc
class _$AppLanguageCopyWithImpl<$Res, $Val extends AppLanguage>
    implements $AppLanguageCopyWith<$Res> {
  _$AppLanguageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? key = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppLanguageImplCopyWith<$Res>
    implements $AppLanguageCopyWith<$Res> {
  factory _$$AppLanguageImplCopyWith(
          _$AppLanguageImpl value, $Res Function(_$AppLanguageImpl) then) =
      __$$AppLanguageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String key});
}

/// @nodoc
class __$$AppLanguageImplCopyWithImpl<$Res>
    extends _$AppLanguageCopyWithImpl<$Res, _$AppLanguageImpl>
    implements _$$AppLanguageImplCopyWith<$Res> {
  __$$AppLanguageImplCopyWithImpl(
      _$AppLanguageImpl _value, $Res Function(_$AppLanguageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? key = null,
  }) {
    return _then(_$AppLanguageImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppLanguageImpl implements _AppLanguage {
  const _$AppLanguageImpl({required this.title, required this.key});

  @override
  final String title;
  @override
  final String key;

  @override
  String toString() {
    return 'AppLanguage(title: $title, key: $key)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppLanguageImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.key, key) || other.key == key));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppLanguageImplCopyWith<_$AppLanguageImpl> get copyWith =>
      __$$AppLanguageImplCopyWithImpl<_$AppLanguageImpl>(this, _$identity);
}

abstract class _AppLanguage implements AppLanguage {
  const factory _AppLanguage(
      {required final String title,
      required final String key}) = _$AppLanguageImpl;

  @override
  String get title;
  @override
  String get key;
  @override
  @JsonKey(ignore: true)
  _$$AppLanguageImplCopyWith<_$AppLanguageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
