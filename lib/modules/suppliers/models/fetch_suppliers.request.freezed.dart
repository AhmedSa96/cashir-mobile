// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_suppliers.request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FetchSuppliersRequest _$FetchSuppliersRequestFromJson(
    Map<String, dynamic> json) {
  return _FetchSupplierRequest.fromJson(json);
}

/// @nodoc
mixin _$FetchSuppliersRequest {
  String? get search => throw _privateConstructorUsedError;
  DateTime? get fromDate => throw _privateConstructorUsedError;
  DateTime? get toDate => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  int? get perPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchSuppliersRequestCopyWith<FetchSuppliersRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchSuppliersRequestCopyWith<$Res> {
  factory $FetchSuppliersRequestCopyWith(FetchSuppliersRequest value,
          $Res Function(FetchSuppliersRequest) then) =
      _$FetchSuppliersRequestCopyWithImpl<$Res, FetchSuppliersRequest>;
  @useResult
  $Res call(
      {String? search,
      DateTime? fromDate,
      DateTime? toDate,
      int? page,
      int? perPage});
}

/// @nodoc
class _$FetchSuppliersRequestCopyWithImpl<$Res,
        $Val extends FetchSuppliersRequest>
    implements $FetchSuppliersRequestCopyWith<$Res> {
  _$FetchSuppliersRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? page = freezed,
    Object? perPage = freezed,
  }) {
    return _then(_value.copyWith(
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      fromDate: freezed == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      toDate: freezed == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchSupplierRequestImplCopyWith<$Res>
    implements $FetchSuppliersRequestCopyWith<$Res> {
  factory _$$FetchSupplierRequestImplCopyWith(_$FetchSupplierRequestImpl value,
          $Res Function(_$FetchSupplierRequestImpl) then) =
      __$$FetchSupplierRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? search,
      DateTime? fromDate,
      DateTime? toDate,
      int? page,
      int? perPage});
}

/// @nodoc
class __$$FetchSupplierRequestImplCopyWithImpl<$Res>
    extends _$FetchSuppliersRequestCopyWithImpl<$Res,
        _$FetchSupplierRequestImpl>
    implements _$$FetchSupplierRequestImplCopyWith<$Res> {
  __$$FetchSupplierRequestImplCopyWithImpl(_$FetchSupplierRequestImpl _value,
      $Res Function(_$FetchSupplierRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? page = freezed,
    Object? perPage = freezed,
  }) {
    return _then(_$FetchSupplierRequestImpl(
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      fromDate: freezed == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      toDate: freezed == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchSupplierRequestImpl implements _FetchSupplierRequest {
  const _$FetchSupplierRequestImpl(
      {this.search, this.fromDate, this.toDate, this.page, this.perPage});

  factory _$FetchSupplierRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$FetchSupplierRequestImplFromJson(json);

  @override
  final String? search;
  @override
  final DateTime? fromDate;
  @override
  final DateTime? toDate;
  @override
  final int? page;
  @override
  final int? perPage;

  @override
  String toString() {
    return 'FetchSuppliersRequest(search: $search, fromDate: $fromDate, toDate: $toDate, page: $page, perPage: $perPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchSupplierRequestImpl &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, search, fromDate, toDate, page, perPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchSupplierRequestImplCopyWith<_$FetchSupplierRequestImpl>
      get copyWith =>
          __$$FetchSupplierRequestImplCopyWithImpl<_$FetchSupplierRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchSupplierRequestImplToJson(
      this,
    );
  }
}

abstract class _FetchSupplierRequest implements FetchSuppliersRequest {
  const factory _FetchSupplierRequest(
      {final String? search,
      final DateTime? fromDate,
      final DateTime? toDate,
      final int? page,
      final int? perPage}) = _$FetchSupplierRequestImpl;

  factory _FetchSupplierRequest.fromJson(Map<String, dynamic> json) =
      _$FetchSupplierRequestImpl.fromJson;

  @override
  String? get search;
  @override
  DateTime? get fromDate;
  @override
  DateTime? get toDate;
  @override
  int? get page;
  @override
  int? get perPage;
  @override
  @JsonKey(ignore: true)
  _$$FetchSupplierRequestImplCopyWith<_$FetchSupplierRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
