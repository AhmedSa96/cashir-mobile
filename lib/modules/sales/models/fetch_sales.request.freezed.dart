// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_sales.request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FetchSalesRequest _$FetchSalesRequestFromJson(Map<String, dynamic> json) {
  return _FetchSalesRequest.fromJson(json);
}

/// @nodoc
mixin _$FetchSalesRequest {
  int? get idLike => throw _privateConstructorUsedError;
  DateTime? get fromDate => throw _privateConstructorUsedError;
  DateTime? get toDate => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchSalesRequestCopyWith<FetchSalesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchSalesRequestCopyWith<$Res> {
  factory $FetchSalesRequestCopyWith(
          FetchSalesRequest value, $Res Function(FetchSalesRequest) then) =
      _$FetchSalesRequestCopyWithImpl<$Res, FetchSalesRequest>;
  @useResult
  $Res call(
      {int? idLike,
      DateTime? fromDate,
      DateTime? toDate,
      int page,
      int perPage});
}

/// @nodoc
class _$FetchSalesRequestCopyWithImpl<$Res, $Val extends FetchSalesRequest>
    implements $FetchSalesRequestCopyWith<$Res> {
  _$FetchSalesRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$FetchSalesRequestImplCopyWith<$Res>
    implements $FetchSalesRequestCopyWith<$Res> {
  factory _$$FetchSalesRequestImplCopyWith(_$FetchSalesRequestImpl value,
          $Res Function(_$FetchSalesRequestImpl) then) =
      __$$FetchSalesRequestImplCopyWithImpl<$Res>;
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
class __$$FetchSalesRequestImplCopyWithImpl<$Res>
    extends _$FetchSalesRequestCopyWithImpl<$Res, _$FetchSalesRequestImpl>
    implements _$$FetchSalesRequestImplCopyWith<$Res> {
  __$$FetchSalesRequestImplCopyWithImpl(_$FetchSalesRequestImpl _value,
      $Res Function(_$FetchSalesRequestImpl) _then)
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
    return _then(_$FetchSalesRequestImpl(
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
class _$FetchSalesRequestImpl implements _FetchSalesRequest {
  const _$FetchSalesRequestImpl(
      {this.idLike,
      this.fromDate,
      this.toDate,
      this.page = 1,
      this.perPage = 15});

  factory _$FetchSalesRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$FetchSalesRequestImplFromJson(json);

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
    return 'FetchSalesRequest(idLike: $idLike, fromDate: $fromDate, toDate: $toDate, page: $page, perPage: $perPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchSalesRequestImpl &&
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
  _$$FetchSalesRequestImplCopyWith<_$FetchSalesRequestImpl> get copyWith =>
      __$$FetchSalesRequestImplCopyWithImpl<_$FetchSalesRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchSalesRequestImplToJson(
      this,
    );
  }
}

abstract class _FetchSalesRequest implements FetchSalesRequest {
  const factory _FetchSalesRequest(
      {final int? idLike,
      final DateTime? fromDate,
      final DateTime? toDate,
      final int page,
      final int perPage}) = _$FetchSalesRequestImpl;

  factory _FetchSalesRequest.fromJson(Map<String, dynamic> json) =
      _$FetchSalesRequestImpl.fromJson;

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
  _$$FetchSalesRequestImplCopyWith<_$FetchSalesRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
