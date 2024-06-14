// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_purcheses.request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FetchPurchesesRequest _$FetchPurchesesRequestFromJson(
    Map<String, dynamic> json) {
  return _FetchPurchesesRequest.fromJson(json);
}

/// @nodoc
mixin _$FetchPurchesesRequest {
  int? get idLike => throw _privateConstructorUsedError;
  DateTime? get fromDate => throw _privateConstructorUsedError;
  DateTime? get toDate => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchPurchesesRequestCopyWith<FetchPurchesesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchPurchesesRequestCopyWith<$Res> {
  factory $FetchPurchesesRequestCopyWith(FetchPurchesesRequest value,
          $Res Function(FetchPurchesesRequest) then) =
      _$FetchPurchesesRequestCopyWithImpl<$Res, FetchPurchesesRequest>;
  @useResult
  $Res call(
      {int? idLike,
      DateTime? fromDate,
      DateTime? toDate,
      int page,
      int perPage});
}

/// @nodoc
class _$FetchPurchesesRequestCopyWithImpl<$Res,
        $Val extends FetchPurchesesRequest>
    implements $FetchPurchesesRequestCopyWith<$Res> {
  _$FetchPurchesesRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idLike = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? page = null,
    Object? perPage = null,
  }) {
    return _then(_value.copyWith(
      idLike: freezed == idLike
          ? _value.idLike
          : idLike // ignore: cast_nullable_to_non_nullable
              as int?,
      fromDate: freezed == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      toDate: freezed == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchPurchesesRequestImplCopyWith<$Res>
    implements $FetchPurchesesRequestCopyWith<$Res> {
  factory _$$FetchPurchesesRequestImplCopyWith(
          _$FetchPurchesesRequestImpl value,
          $Res Function(_$FetchPurchesesRequestImpl) then) =
      __$$FetchPurchesesRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? idLike,
      DateTime? fromDate,
      DateTime? toDate,
      int page,
      int perPage});
}

/// @nodoc
class __$$FetchPurchesesRequestImplCopyWithImpl<$Res>
    extends _$FetchPurchesesRequestCopyWithImpl<$Res,
        _$FetchPurchesesRequestImpl>
    implements _$$FetchPurchesesRequestImplCopyWith<$Res> {
  __$$FetchPurchesesRequestImplCopyWithImpl(_$FetchPurchesesRequestImpl _value,
      $Res Function(_$FetchPurchesesRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idLike = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? page = null,
    Object? perPage = null,
  }) {
    return _then(_$FetchPurchesesRequestImpl(
      idLike: freezed == idLike
          ? _value.idLike
          : idLike // ignore: cast_nullable_to_non_nullable
              as int?,
      fromDate: freezed == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      toDate: freezed == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchPurchesesRequestImpl implements _FetchPurchesesRequest {
  const _$FetchPurchesesRequestImpl(
      {this.idLike,
      this.fromDate,
      this.toDate,
      this.page = 1,
      this.perPage = 15});

  factory _$FetchPurchesesRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$FetchPurchesesRequestImplFromJson(json);

  @override
  final int? idLike;
  @override
  final DateTime? fromDate;
  @override
  final DateTime? toDate;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int perPage;

  @override
  String toString() {
    return 'FetchPurchesesRequest(idLike: $idLike, fromDate: $fromDate, toDate: $toDate, page: $page, perPage: $perPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchPurchesesRequestImpl &&
            (identical(other.idLike, idLike) || other.idLike == idLike) &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, idLike, fromDate, toDate, page, perPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchPurchesesRequestImplCopyWith<_$FetchPurchesesRequestImpl>
      get copyWith => __$$FetchPurchesesRequestImplCopyWithImpl<
          _$FetchPurchesesRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchPurchesesRequestImplToJson(
      this,
    );
  }
}

abstract class _FetchPurchesesRequest implements FetchPurchesesRequest {
  const factory _FetchPurchesesRequest(
      {final int? idLike,
      final DateTime? fromDate,
      final DateTime? toDate,
      final int page,
      final int perPage}) = _$FetchPurchesesRequestImpl;

  factory _FetchPurchesesRequest.fromJson(Map<String, dynamic> json) =
      _$FetchPurchesesRequestImpl.fromJson;

  @override
  int? get idLike;
  @override
  DateTime? get fromDate;
  @override
  DateTime? get toDate;
  @override
  int get page;
  @override
  int get perPage;
  @override
  @JsonKey(ignore: true)
  _$$FetchPurchesesRequestImplCopyWith<_$FetchPurchesesRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
