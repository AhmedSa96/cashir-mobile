// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_data.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaginatedDataMeta _$PaginatedDataMetaFromJson(Map<String, dynamic> json) {
  return _PaginatedDataMeta.fromJson(json);
}

/// @nodoc
mixin _$PaginatedDataMeta {
  int? get nextPage => throw _privateConstructorUsedError;
  int? get prevPage => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get pageLimit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginatedDataMetaCopyWith<PaginatedDataMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedDataMetaCopyWith<$Res> {
  factory $PaginatedDataMetaCopyWith(
          PaginatedDataMeta value, $Res Function(PaginatedDataMeta) then) =
      _$PaginatedDataMetaCopyWithImpl<$Res, PaginatedDataMeta>;
  @useResult
  $Res call(
      {int? nextPage,
      int? prevPage,
      int totalCount,
      int currentPage,
      int pageLimit});
}

/// @nodoc
class _$PaginatedDataMetaCopyWithImpl<$Res, $Val extends PaginatedDataMeta>
    implements $PaginatedDataMetaCopyWith<$Res> {
  _$PaginatedDataMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextPage = freezed,
    Object? prevPage = freezed,
    Object? totalCount = null,
    Object? currentPage = null,
    Object? pageLimit = null,
  }) {
    return _then(_value.copyWith(
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPage: freezed == prevPage
          ? _value.prevPage
          : prevPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      pageLimit: null == pageLimit
          ? _value.pageLimit
          : pageLimit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginatedDataMetaImplCopyWith<$Res>
    implements $PaginatedDataMetaCopyWith<$Res> {
  factory _$$PaginatedDataMetaImplCopyWith(_$PaginatedDataMetaImpl value,
          $Res Function(_$PaginatedDataMetaImpl) then) =
      __$$PaginatedDataMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? nextPage,
      int? prevPage,
      int totalCount,
      int currentPage,
      int pageLimit});
}

/// @nodoc
class __$$PaginatedDataMetaImplCopyWithImpl<$Res>
    extends _$PaginatedDataMetaCopyWithImpl<$Res, _$PaginatedDataMetaImpl>
    implements _$$PaginatedDataMetaImplCopyWith<$Res> {
  __$$PaginatedDataMetaImplCopyWithImpl(_$PaginatedDataMetaImpl _value,
      $Res Function(_$PaginatedDataMetaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextPage = freezed,
    Object? prevPage = freezed,
    Object? totalCount = null,
    Object? currentPage = null,
    Object? pageLimit = null,
  }) {
    return _then(_$PaginatedDataMetaImpl(
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPage: freezed == prevPage
          ? _value.prevPage
          : prevPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      pageLimit: null == pageLimit
          ? _value.pageLimit
          : pageLimit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginatedDataMetaImpl implements _PaginatedDataMeta {
  const _$PaginatedDataMetaImpl(
      {required this.nextPage,
      required this.prevPage,
      required this.totalCount,
      required this.currentPage,
      required this.pageLimit});

  factory _$PaginatedDataMetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginatedDataMetaImplFromJson(json);

  @override
  final int? nextPage;
  @override
  final int? prevPage;
  @override
  final int totalCount;
  @override
  final int currentPage;
  @override
  final int pageLimit;

  @override
  String toString() {
    return 'PaginatedDataMeta(nextPage: $nextPage, prevPage: $prevPage, totalCount: $totalCount, currentPage: $currentPage, pageLimit: $pageLimit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedDataMetaImpl &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            (identical(other.prevPage, prevPage) ||
                other.prevPage == prevPage) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.pageLimit, pageLimit) ||
                other.pageLimit == pageLimit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, nextPage, prevPage, totalCount, currentPage, pageLimit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedDataMetaImplCopyWith<_$PaginatedDataMetaImpl> get copyWith =>
      __$$PaginatedDataMetaImplCopyWithImpl<_$PaginatedDataMetaImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginatedDataMetaImplToJson(
      this,
    );
  }
}

abstract class _PaginatedDataMeta implements PaginatedDataMeta {
  const factory _PaginatedDataMeta(
      {required final int? nextPage,
      required final int? prevPage,
      required final int totalCount,
      required final int currentPage,
      required final int pageLimit}) = _$PaginatedDataMetaImpl;

  factory _PaginatedDataMeta.fromJson(Map<String, dynamic> json) =
      _$PaginatedDataMetaImpl.fromJson;

  @override
  int? get nextPage;
  @override
  int? get prevPage;
  @override
  int get totalCount;
  @override
  int get currentPage;
  @override
  int get pageLimit;
  @override
  @JsonKey(ignore: true)
  _$$PaginatedDataMetaImplCopyWith<_$PaginatedDataMetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaginatedData<T> {
  List<T> get data => throw _privateConstructorUsedError;
  PaginatedDataMeta? get meta => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginatedDataCopyWith<T, PaginatedData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedDataCopyWith<T, $Res> {
  factory $PaginatedDataCopyWith(
          PaginatedData<T> value, $Res Function(PaginatedData<T>) then) =
      _$PaginatedDataCopyWithImpl<T, $Res, PaginatedData<T>>;
  @useResult
  $Res call({List<T> data, PaginatedDataMeta? meta});

  $PaginatedDataMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$PaginatedDataCopyWithImpl<T, $Res, $Val extends PaginatedData<T>>
    implements $PaginatedDataCopyWith<T, $Res> {
  _$PaginatedDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as PaginatedDataMeta?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginatedDataMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $PaginatedDataMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaginatedDataImplCopyWith<T, $Res>
    implements $PaginatedDataCopyWith<T, $Res> {
  factory _$$PaginatedDataImplCopyWith(_$PaginatedDataImpl<T> value,
          $Res Function(_$PaginatedDataImpl<T>) then) =
      __$$PaginatedDataImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({List<T> data, PaginatedDataMeta? meta});

  @override
  $PaginatedDataMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$PaginatedDataImplCopyWithImpl<T, $Res>
    extends _$PaginatedDataCopyWithImpl<T, $Res, _$PaginatedDataImpl<T>>
    implements _$$PaginatedDataImplCopyWith<T, $Res> {
  __$$PaginatedDataImplCopyWithImpl(_$PaginatedDataImpl<T> _value,
      $Res Function(_$PaginatedDataImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = freezed,
  }) {
    return _then(_$PaginatedDataImpl<T>(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as PaginatedDataMeta?,
    ));
  }
}

/// @nodoc

class _$PaginatedDataImpl<T> implements _PaginatedData<T> {
  const _$PaginatedDataImpl({required final List<T> data, this.meta})
      : _data = data;

  final List<T> _data;
  @override
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final PaginatedDataMeta? meta;

  @override
  String toString() {
    return 'PaginatedData<$T>(data: $data, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedDataImpl<T> &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedDataImplCopyWith<T, _$PaginatedDataImpl<T>> get copyWith =>
      __$$PaginatedDataImplCopyWithImpl<T, _$PaginatedDataImpl<T>>(
          this, _$identity);
}

abstract class _PaginatedData<T> implements PaginatedData<T> {
  const factory _PaginatedData(
      {required final List<T> data,
      final PaginatedDataMeta? meta}) = _$PaginatedDataImpl<T>;

  @override
  List<T> get data;
  @override
  PaginatedDataMeta? get meta;
  @override
  @JsonKey(ignore: true)
  _$$PaginatedDataImplCopyWith<T, _$PaginatedDataImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
