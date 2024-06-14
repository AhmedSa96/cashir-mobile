// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_client_receipts.request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FetchClientReceiptsRequest _$FetchClientReceiptsRequestFromJson(
    Map<String, dynamic> json) {
  return _FetchClientReceiptsRequest.fromJson(json);
}

/// @nodoc
mixin _$FetchClientReceiptsRequest {
  int? get clientId => throw _privateConstructorUsedError;
  DateTime? get fromDate => throw _privateConstructorUsedError;
  DateTime? get toDate => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchClientReceiptsRequestCopyWith<FetchClientReceiptsRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchClientReceiptsRequestCopyWith<$Res> {
  factory $FetchClientReceiptsRequestCopyWith(FetchClientReceiptsRequest value,
          $Res Function(FetchClientReceiptsRequest) then) =
      _$FetchClientReceiptsRequestCopyWithImpl<$Res,
          FetchClientReceiptsRequest>;
  @useResult
  $Res call(
      {int? clientId,
      DateTime? fromDate,
      DateTime? toDate,
      int page,
      int perPage});
}

/// @nodoc
class _$FetchClientReceiptsRequestCopyWithImpl<$Res,
        $Val extends FetchClientReceiptsRequest>
    implements $FetchClientReceiptsRequestCopyWith<$Res> {
  _$FetchClientReceiptsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? page = null,
    Object? perPage = null,
  }) {
    return _then(_value.copyWith(
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$FetchClientReceiptsRequestImplCopyWith<$Res>
    implements $FetchClientReceiptsRequestCopyWith<$Res> {
  factory _$$FetchClientReceiptsRequestImplCopyWith(
          _$FetchClientReceiptsRequestImpl value,
          $Res Function(_$FetchClientReceiptsRequestImpl) then) =
      __$$FetchClientReceiptsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? clientId,
      DateTime? fromDate,
      DateTime? toDate,
      int page,
      int perPage});
}

/// @nodoc
class __$$FetchClientReceiptsRequestImplCopyWithImpl<$Res>
    extends _$FetchClientReceiptsRequestCopyWithImpl<$Res,
        _$FetchClientReceiptsRequestImpl>
    implements _$$FetchClientReceiptsRequestImplCopyWith<$Res> {
  __$$FetchClientReceiptsRequestImplCopyWithImpl(
      _$FetchClientReceiptsRequestImpl _value,
      $Res Function(_$FetchClientReceiptsRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? page = null,
    Object? perPage = null,
  }) {
    return _then(_$FetchClientReceiptsRequestImpl(
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
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
class _$FetchClientReceiptsRequestImpl implements _FetchClientReceiptsRequest {
  const _$FetchClientReceiptsRequestImpl(
      {this.clientId,
      this.fromDate,
      this.toDate,
      this.page = 1,
      this.perPage = 10});

  factory _$FetchClientReceiptsRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FetchClientReceiptsRequestImplFromJson(json);

  @override
  final int? clientId;
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
    return 'FetchClientReceiptsRequest(clientId: $clientId, fromDate: $fromDate, toDate: $toDate, page: $page, perPage: $perPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchClientReceiptsRequestImpl &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, clientId, fromDate, toDate, page, perPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchClientReceiptsRequestImplCopyWith<_$FetchClientReceiptsRequestImpl>
      get copyWith => __$$FetchClientReceiptsRequestImplCopyWithImpl<
          _$FetchClientReceiptsRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchClientReceiptsRequestImplToJson(
      this,
    );
  }
}

abstract class _FetchClientReceiptsRequest
    implements FetchClientReceiptsRequest {
  const factory _FetchClientReceiptsRequest(
      {final int? clientId,
      final DateTime? fromDate,
      final DateTime? toDate,
      final int page,
      final int perPage}) = _$FetchClientReceiptsRequestImpl;

  factory _FetchClientReceiptsRequest.fromJson(Map<String, dynamic> json) =
      _$FetchClientReceiptsRequestImpl.fromJson;

  @override
  int? get clientId;
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
  _$$FetchClientReceiptsRequestImplCopyWith<_$FetchClientReceiptsRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
