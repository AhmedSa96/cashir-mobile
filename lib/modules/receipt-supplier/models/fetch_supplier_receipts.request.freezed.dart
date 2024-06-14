// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_supplier_receipts.request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FetchSupplierReceiptsRequest _$FetchSupplierReceiptsRequestFromJson(
    Map<String, dynamic> json) {
  return _FetchSupplierReceiptsRequest.fromJson(json);
}

/// @nodoc
mixin _$FetchSupplierReceiptsRequest {
  int? get supplierId => throw _privateConstructorUsedError;
  DateTime? get fromDate => throw _privateConstructorUsedError;
  DateTime? get toDate => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchSupplierReceiptsRequestCopyWith<FetchSupplierReceiptsRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchSupplierReceiptsRequestCopyWith<$Res> {
  factory $FetchSupplierReceiptsRequestCopyWith(
          FetchSupplierReceiptsRequest value,
          $Res Function(FetchSupplierReceiptsRequest) then) =
      _$FetchSupplierReceiptsRequestCopyWithImpl<$Res,
          FetchSupplierReceiptsRequest>;
  @useResult
  $Res call(
      {int? supplierId,
      DateTime? fromDate,
      DateTime? toDate,
      int page,
      int perPage});
}

/// @nodoc
class _$FetchSupplierReceiptsRequestCopyWithImpl<$Res,
        $Val extends FetchSupplierReceiptsRequest>
    implements $FetchSupplierReceiptsRequestCopyWith<$Res> {
  _$FetchSupplierReceiptsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supplierId = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? page = null,
    Object? perPage = null,
  }) {
    return _then(_value.copyWith(
      supplierId: freezed == supplierId
          ? _value.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$FetchSupplierReceiptsRequestImplCopyWith<$Res>
    implements $FetchSupplierReceiptsRequestCopyWith<$Res> {
  factory _$$FetchSupplierReceiptsRequestImplCopyWith(
          _$FetchSupplierReceiptsRequestImpl value,
          $Res Function(_$FetchSupplierReceiptsRequestImpl) then) =
      __$$FetchSupplierReceiptsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? supplierId,
      DateTime? fromDate,
      DateTime? toDate,
      int page,
      int perPage});
}

/// @nodoc
class __$$FetchSupplierReceiptsRequestImplCopyWithImpl<$Res>
    extends _$FetchSupplierReceiptsRequestCopyWithImpl<$Res,
        _$FetchSupplierReceiptsRequestImpl>
    implements _$$FetchSupplierReceiptsRequestImplCopyWith<$Res> {
  __$$FetchSupplierReceiptsRequestImplCopyWithImpl(
      _$FetchSupplierReceiptsRequestImpl _value,
      $Res Function(_$FetchSupplierReceiptsRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supplierId = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? page = null,
    Object? perPage = null,
  }) {
    return _then(_$FetchSupplierReceiptsRequestImpl(
      supplierId: freezed == supplierId
          ? _value.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
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
class _$FetchSupplierReceiptsRequestImpl
    implements _FetchSupplierReceiptsRequest {
  const _$FetchSupplierReceiptsRequestImpl(
      {this.supplierId,
      this.fromDate,
      this.toDate,
      this.page = 1,
      this.perPage = 10});

  factory _$FetchSupplierReceiptsRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FetchSupplierReceiptsRequestImplFromJson(json);

  @override
  final int? supplierId;
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
    return 'FetchSupplierReceiptsRequest(supplierId: $supplierId, fromDate: $fromDate, toDate: $toDate, page: $page, perPage: $perPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchSupplierReceiptsRequestImpl &&
            (identical(other.supplierId, supplierId) ||
                other.supplierId == supplierId) &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, supplierId, fromDate, toDate, page, perPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchSupplierReceiptsRequestImplCopyWith<
          _$FetchSupplierReceiptsRequestImpl>
      get copyWith => __$$FetchSupplierReceiptsRequestImplCopyWithImpl<
          _$FetchSupplierReceiptsRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchSupplierReceiptsRequestImplToJson(
      this,
    );
  }
}

abstract class _FetchSupplierReceiptsRequest
    implements FetchSupplierReceiptsRequest {
  const factory _FetchSupplierReceiptsRequest(
      {final int? supplierId,
      final DateTime? fromDate,
      final DateTime? toDate,
      final int page,
      final int perPage}) = _$FetchSupplierReceiptsRequestImpl;

  factory _FetchSupplierReceiptsRequest.fromJson(Map<String, dynamic> json) =
      _$FetchSupplierReceiptsRequestImpl.fromJson;

  @override
  int? get supplierId;
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
  _$$FetchSupplierReceiptsRequestImplCopyWith<
          _$FetchSupplierReceiptsRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
