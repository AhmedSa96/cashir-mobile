// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_dashboard.request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FetchDashboardRequest _$FetchDashboardRequestFromJson(
    Map<String, dynamic> json) {
  return _FetchDashboardRequest.fromJson(json);
}

/// @nodoc
mixin _$FetchDashboardRequest {
  DateTime? get fromDate => throw _privateConstructorUsedError;
  DateTime? get toDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchDashboardRequestCopyWith<FetchDashboardRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchDashboardRequestCopyWith<$Res> {
  factory $FetchDashboardRequestCopyWith(FetchDashboardRequest value,
          $Res Function(FetchDashboardRequest) then) =
      _$FetchDashboardRequestCopyWithImpl<$Res, FetchDashboardRequest>;
  @useResult
  $Res call({DateTime? fromDate, DateTime? toDate});
}

/// @nodoc
class _$FetchDashboardRequestCopyWithImpl<$Res,
        $Val extends FetchDashboardRequest>
    implements $FetchDashboardRequestCopyWith<$Res> {
  _$FetchDashboardRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromDate = freezed,
    Object? toDate = freezed,
  }) {
    return _then(_value.copyWith(
      fromDate: freezed == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      toDate: freezed == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchDashboardRequestImplCopyWith<$Res>
    implements $FetchDashboardRequestCopyWith<$Res> {
  factory _$$FetchDashboardRequestImplCopyWith(
          _$FetchDashboardRequestImpl value,
          $Res Function(_$FetchDashboardRequestImpl) then) =
      __$$FetchDashboardRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime? fromDate, DateTime? toDate});
}

/// @nodoc
class __$$FetchDashboardRequestImplCopyWithImpl<$Res>
    extends _$FetchDashboardRequestCopyWithImpl<$Res,
        _$FetchDashboardRequestImpl>
    implements _$$FetchDashboardRequestImplCopyWith<$Res> {
  __$$FetchDashboardRequestImplCopyWithImpl(_$FetchDashboardRequestImpl _value,
      $Res Function(_$FetchDashboardRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromDate = freezed,
    Object? toDate = freezed,
  }) {
    return _then(_$FetchDashboardRequestImpl(
      fromDate: freezed == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      toDate: freezed == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchDashboardRequestImpl implements _FetchDashboardRequest {
  const _$FetchDashboardRequestImpl({this.fromDate, this.toDate});

  factory _$FetchDashboardRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$FetchDashboardRequestImplFromJson(json);

  @override
  final DateTime? fromDate;
  @override
  final DateTime? toDate;

  @override
  String toString() {
    return 'FetchDashboardRequest(fromDate: $fromDate, toDate: $toDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchDashboardRequestImpl &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fromDate, toDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchDashboardRequestImplCopyWith<_$FetchDashboardRequestImpl>
      get copyWith => __$$FetchDashboardRequestImplCopyWithImpl<
          _$FetchDashboardRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchDashboardRequestImplToJson(
      this,
    );
  }
}

abstract class _FetchDashboardRequest implements FetchDashboardRequest {
  const factory _FetchDashboardRequest(
      {final DateTime? fromDate,
      final DateTime? toDate}) = _$FetchDashboardRequestImpl;

  factory _FetchDashboardRequest.fromJson(Map<String, dynamic> json) =
      _$FetchDashboardRequestImpl.fromJson;

  @override
  DateTime? get fromDate;
  @override
  DateTime? get toDate;
  @override
  @JsonKey(ignore: true)
  _$$FetchDashboardRequestImplCopyWith<_$FetchDashboardRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
