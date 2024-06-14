// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_data.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SalesResponseForDashboard _$SalesResponseForDashboardFromJson(
    Map<String, dynamic> json) {
  return _SalesResponseForDashboard.fromJson(json);
}

/// @nodoc
mixin _$SalesResponseForDashboard {
  List<SaleResponse> get orders => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesResponseForDashboardCopyWith<SalesResponseForDashboard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesResponseForDashboardCopyWith<$Res> {
  factory $SalesResponseForDashboardCopyWith(SalesResponseForDashboard value,
          $Res Function(SalesResponseForDashboard) then) =
      _$SalesResponseForDashboardCopyWithImpl<$Res, SalesResponseForDashboard>;
  @useResult
  $Res call({List<SaleResponse> orders, int count});
}

/// @nodoc
class _$SalesResponseForDashboardCopyWithImpl<$Res,
        $Val extends SalesResponseForDashboard>
    implements $SalesResponseForDashboardCopyWith<$Res> {
  _$SalesResponseForDashboardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<SaleResponse>,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SalesResponseForDashboardImplCopyWith<$Res>
    implements $SalesResponseForDashboardCopyWith<$Res> {
  factory _$$SalesResponseForDashboardImplCopyWith(
          _$SalesResponseForDashboardImpl value,
          $Res Function(_$SalesResponseForDashboardImpl) then) =
      __$$SalesResponseForDashboardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SaleResponse> orders, int count});
}

/// @nodoc
class __$$SalesResponseForDashboardImplCopyWithImpl<$Res>
    extends _$SalesResponseForDashboardCopyWithImpl<$Res,
        _$SalesResponseForDashboardImpl>
    implements _$$SalesResponseForDashboardImplCopyWith<$Res> {
  __$$SalesResponseForDashboardImplCopyWithImpl(
      _$SalesResponseForDashboardImpl _value,
      $Res Function(_$SalesResponseForDashboardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? count = null,
  }) {
    return _then(_$SalesResponseForDashboardImpl(
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<SaleResponse>,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SalesResponseForDashboardImpl implements _SalesResponseForDashboard {
  const _$SalesResponseForDashboardImpl(
      {required final List<SaleResponse> orders, required this.count})
      : _orders = orders;

  factory _$SalesResponseForDashboardImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalesResponseForDashboardImplFromJson(json);

  final List<SaleResponse> _orders;
  @override
  List<SaleResponse> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  final int count;

  @override
  String toString() {
    return 'SalesResponseForDashboard(orders: $orders, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesResponseForDashboardImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_orders), count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesResponseForDashboardImplCopyWith<_$SalesResponseForDashboardImpl>
      get copyWith => __$$SalesResponseForDashboardImplCopyWithImpl<
          _$SalesResponseForDashboardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SalesResponseForDashboardImplToJson(
      this,
    );
  }
}

abstract class _SalesResponseForDashboard implements SalesResponseForDashboard {
  const factory _SalesResponseForDashboard(
      {required final List<SaleResponse> orders,
      required final int count}) = _$SalesResponseForDashboardImpl;

  factory _SalesResponseForDashboard.fromJson(Map<String, dynamic> json) =
      _$SalesResponseForDashboardImpl.fromJson;

  @override
  List<SaleResponse> get orders;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$SalesResponseForDashboardImplCopyWith<_$SalesResponseForDashboardImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PurchsesResponseForDashboard _$PurchsesResponseForDashboardFromJson(
    Map<String, dynamic> json) {
  return _PurchsesResponseForDashboard.fromJson(json);
}

/// @nodoc
mixin _$PurchsesResponseForDashboard {
  List<PurchesResponse> get orders => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchsesResponseForDashboardCopyWith<PurchsesResponseForDashboard>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchsesResponseForDashboardCopyWith<$Res> {
  factory $PurchsesResponseForDashboardCopyWith(
          PurchsesResponseForDashboard value,
          $Res Function(PurchsesResponseForDashboard) then) =
      _$PurchsesResponseForDashboardCopyWithImpl<$Res,
          PurchsesResponseForDashboard>;
  @useResult
  $Res call({List<PurchesResponse> orders, int count});
}

/// @nodoc
class _$PurchsesResponseForDashboardCopyWithImpl<$Res,
        $Val extends PurchsesResponseForDashboard>
    implements $PurchsesResponseForDashboardCopyWith<$Res> {
  _$PurchsesResponseForDashboardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<PurchesResponse>,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PurchsesResponseForDashboardImplCopyWith<$Res>
    implements $PurchsesResponseForDashboardCopyWith<$Res> {
  factory _$$PurchsesResponseForDashboardImplCopyWith(
          _$PurchsesResponseForDashboardImpl value,
          $Res Function(_$PurchsesResponseForDashboardImpl) then) =
      __$$PurchsesResponseForDashboardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PurchesResponse> orders, int count});
}

/// @nodoc
class __$$PurchsesResponseForDashboardImplCopyWithImpl<$Res>
    extends _$PurchsesResponseForDashboardCopyWithImpl<$Res,
        _$PurchsesResponseForDashboardImpl>
    implements _$$PurchsesResponseForDashboardImplCopyWith<$Res> {
  __$$PurchsesResponseForDashboardImplCopyWithImpl(
      _$PurchsesResponseForDashboardImpl _value,
      $Res Function(_$PurchsesResponseForDashboardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? count = null,
  }) {
    return _then(_$PurchsesResponseForDashboardImpl(
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<PurchesResponse>,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PurchsesResponseForDashboardImpl
    implements _PurchsesResponseForDashboard {
  const _$PurchsesResponseForDashboardImpl(
      {required final List<PurchesResponse> orders, required this.count})
      : _orders = orders;

  factory _$PurchsesResponseForDashboardImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PurchsesResponseForDashboardImplFromJson(json);

  final List<PurchesResponse> _orders;
  @override
  List<PurchesResponse> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  final int count;

  @override
  String toString() {
    return 'PurchsesResponseForDashboard(orders: $orders, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchsesResponseForDashboardImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_orders), count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchsesResponseForDashboardImplCopyWith<
          _$PurchsesResponseForDashboardImpl>
      get copyWith => __$$PurchsesResponseForDashboardImplCopyWithImpl<
          _$PurchsesResponseForDashboardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PurchsesResponseForDashboardImplToJson(
      this,
    );
  }
}

abstract class _PurchsesResponseForDashboard
    implements PurchsesResponseForDashboard {
  const factory _PurchsesResponseForDashboard(
      {required final List<PurchesResponse> orders,
      required final int count}) = _$PurchsesResponseForDashboardImpl;

  factory _PurchsesResponseForDashboard.fromJson(Map<String, dynamic> json) =
      _$PurchsesResponseForDashboardImpl.fromJson;

  @override
  List<PurchesResponse> get orders;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$PurchsesResponseForDashboardImplCopyWith<
          _$PurchsesResponseForDashboardImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClientReceiptsResponseForDashboard _$ClientReceiptsResponseForDashboardFromJson(
    Map<String, dynamic> json) {
  return _ClientReceiptsResponseForDashboard.fromJson(json);
}

/// @nodoc
mixin _$ClientReceiptsResponseForDashboard {
  List<ClientReceipt> get orders => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientReceiptsResponseForDashboardCopyWith<
          ClientReceiptsResponseForDashboard>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientReceiptsResponseForDashboardCopyWith<$Res> {
  factory $ClientReceiptsResponseForDashboardCopyWith(
          ClientReceiptsResponseForDashboard value,
          $Res Function(ClientReceiptsResponseForDashboard) then) =
      _$ClientReceiptsResponseForDashboardCopyWithImpl<$Res,
          ClientReceiptsResponseForDashboard>;
  @useResult
  $Res call({List<ClientReceipt> orders, int count});
}

/// @nodoc
class _$ClientReceiptsResponseForDashboardCopyWithImpl<$Res,
        $Val extends ClientReceiptsResponseForDashboard>
    implements $ClientReceiptsResponseForDashboardCopyWith<$Res> {
  _$ClientReceiptsResponseForDashboardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<ClientReceipt>,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientReceiptsResponseForDashboardImplCopyWith<$Res>
    implements $ClientReceiptsResponseForDashboardCopyWith<$Res> {
  factory _$$ClientReceiptsResponseForDashboardImplCopyWith(
          _$ClientReceiptsResponseForDashboardImpl value,
          $Res Function(_$ClientReceiptsResponseForDashboardImpl) then) =
      __$$ClientReceiptsResponseForDashboardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ClientReceipt> orders, int count});
}

/// @nodoc
class __$$ClientReceiptsResponseForDashboardImplCopyWithImpl<$Res>
    extends _$ClientReceiptsResponseForDashboardCopyWithImpl<$Res,
        _$ClientReceiptsResponseForDashboardImpl>
    implements _$$ClientReceiptsResponseForDashboardImplCopyWith<$Res> {
  __$$ClientReceiptsResponseForDashboardImplCopyWithImpl(
      _$ClientReceiptsResponseForDashboardImpl _value,
      $Res Function(_$ClientReceiptsResponseForDashboardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? count = null,
  }) {
    return _then(_$ClientReceiptsResponseForDashboardImpl(
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<ClientReceipt>,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientReceiptsResponseForDashboardImpl
    implements _ClientReceiptsResponseForDashboard {
  const _$ClientReceiptsResponseForDashboardImpl(
      {required final List<ClientReceipt> orders, required this.count})
      : _orders = orders;

  factory _$ClientReceiptsResponseForDashboardImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClientReceiptsResponseForDashboardImplFromJson(json);

  final List<ClientReceipt> _orders;
  @override
  List<ClientReceipt> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  final int count;

  @override
  String toString() {
    return 'ClientReceiptsResponseForDashboard(orders: $orders, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientReceiptsResponseForDashboardImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_orders), count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientReceiptsResponseForDashboardImplCopyWith<
          _$ClientReceiptsResponseForDashboardImpl>
      get copyWith => __$$ClientReceiptsResponseForDashboardImplCopyWithImpl<
          _$ClientReceiptsResponseForDashboardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientReceiptsResponseForDashboardImplToJson(
      this,
    );
  }
}

abstract class _ClientReceiptsResponseForDashboard
    implements ClientReceiptsResponseForDashboard {
  const factory _ClientReceiptsResponseForDashboard(
      {required final List<ClientReceipt> orders,
      required final int count}) = _$ClientReceiptsResponseForDashboardImpl;

  factory _ClientReceiptsResponseForDashboard.fromJson(
          Map<String, dynamic> json) =
      _$ClientReceiptsResponseForDashboardImpl.fromJson;

  @override
  List<ClientReceipt> get orders;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$ClientReceiptsResponseForDashboardImplCopyWith<
          _$ClientReceiptsResponseForDashboardImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SupplierReceiptsResponseForDashboard
    _$SupplierReceiptsResponseForDashboardFromJson(Map<String, dynamic> json) {
  return _SupplierReceiptsResponseForDashboard.fromJson(json);
}

/// @nodoc
mixin _$SupplierReceiptsResponseForDashboard {
  List<SupplierReceipt> get orders => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupplierReceiptsResponseForDashboardCopyWith<
          SupplierReceiptsResponseForDashboard>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplierReceiptsResponseForDashboardCopyWith<$Res> {
  factory $SupplierReceiptsResponseForDashboardCopyWith(
          SupplierReceiptsResponseForDashboard value,
          $Res Function(SupplierReceiptsResponseForDashboard) then) =
      _$SupplierReceiptsResponseForDashboardCopyWithImpl<$Res,
          SupplierReceiptsResponseForDashboard>;
  @useResult
  $Res call({List<SupplierReceipt> orders, int count});
}

/// @nodoc
class _$SupplierReceiptsResponseForDashboardCopyWithImpl<$Res,
        $Val extends SupplierReceiptsResponseForDashboard>
    implements $SupplierReceiptsResponseForDashboardCopyWith<$Res> {
  _$SupplierReceiptsResponseForDashboardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<SupplierReceipt>,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupplierReceiptsResponseForDashboardImplCopyWith<$Res>
    implements $SupplierReceiptsResponseForDashboardCopyWith<$Res> {
  factory _$$SupplierReceiptsResponseForDashboardImplCopyWith(
          _$SupplierReceiptsResponseForDashboardImpl value,
          $Res Function(_$SupplierReceiptsResponseForDashboardImpl) then) =
      __$$SupplierReceiptsResponseForDashboardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SupplierReceipt> orders, int count});
}

/// @nodoc
class __$$SupplierReceiptsResponseForDashboardImplCopyWithImpl<$Res>
    extends _$SupplierReceiptsResponseForDashboardCopyWithImpl<$Res,
        _$SupplierReceiptsResponseForDashboardImpl>
    implements _$$SupplierReceiptsResponseForDashboardImplCopyWith<$Res> {
  __$$SupplierReceiptsResponseForDashboardImplCopyWithImpl(
      _$SupplierReceiptsResponseForDashboardImpl _value,
      $Res Function(_$SupplierReceiptsResponseForDashboardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? count = null,
  }) {
    return _then(_$SupplierReceiptsResponseForDashboardImpl(
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<SupplierReceipt>,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupplierReceiptsResponseForDashboardImpl
    implements _SupplierReceiptsResponseForDashboard {
  const _$SupplierReceiptsResponseForDashboardImpl(
      {required final List<SupplierReceipt> orders, required this.count})
      : _orders = orders;

  factory _$SupplierReceiptsResponseForDashboardImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SupplierReceiptsResponseForDashboardImplFromJson(json);

  final List<SupplierReceipt> _orders;
  @override
  List<SupplierReceipt> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  final int count;

  @override
  String toString() {
    return 'SupplierReceiptsResponseForDashboard(orders: $orders, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupplierReceiptsResponseForDashboardImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_orders), count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SupplierReceiptsResponseForDashboardImplCopyWith<
          _$SupplierReceiptsResponseForDashboardImpl>
      get copyWith => __$$SupplierReceiptsResponseForDashboardImplCopyWithImpl<
          _$SupplierReceiptsResponseForDashboardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupplierReceiptsResponseForDashboardImplToJson(
      this,
    );
  }
}

abstract class _SupplierReceiptsResponseForDashboard
    implements SupplierReceiptsResponseForDashboard {
  const factory _SupplierReceiptsResponseForDashboard(
      {required final List<SupplierReceipt> orders,
      required final int count}) = _$SupplierReceiptsResponseForDashboardImpl;

  factory _SupplierReceiptsResponseForDashboard.fromJson(
          Map<String, dynamic> json) =
      _$SupplierReceiptsResponseForDashboardImpl.fromJson;

  @override
  List<SupplierReceipt> get orders;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$SupplierReceiptsResponseForDashboardImplCopyWith<
          _$SupplierReceiptsResponseForDashboardImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DashboardData _$DashboardDataFromJson(Map<String, dynamic> json) {
  return _DashboardData.fromJson(json);
}

/// @nodoc
mixin _$DashboardData {
  SalesResponseForDashboard get sales => throw _privateConstructorUsedError;
  PurchsesResponseForDashboard get purcheses =>
      throw _privateConstructorUsedError;
  ClientReceiptsResponseForDashboard get clientReceipts =>
      throw _privateConstructorUsedError;
  SupplierReceiptsResponseForDashboard get supplierReceipts =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DashboardDataCopyWith<DashboardData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardDataCopyWith<$Res> {
  factory $DashboardDataCopyWith(
          DashboardData value, $Res Function(DashboardData) then) =
      _$DashboardDataCopyWithImpl<$Res, DashboardData>;
  @useResult
  $Res call(
      {SalesResponseForDashboard sales,
      PurchsesResponseForDashboard purcheses,
      ClientReceiptsResponseForDashboard clientReceipts,
      SupplierReceiptsResponseForDashboard supplierReceipts});

  $SalesResponseForDashboardCopyWith<$Res> get sales;
  $PurchsesResponseForDashboardCopyWith<$Res> get purcheses;
  $ClientReceiptsResponseForDashboardCopyWith<$Res> get clientReceipts;
  $SupplierReceiptsResponseForDashboardCopyWith<$Res> get supplierReceipts;
}

/// @nodoc
class _$DashboardDataCopyWithImpl<$Res, $Val extends DashboardData>
    implements $DashboardDataCopyWith<$Res> {
  _$DashboardDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sales = null,
    Object? purcheses = null,
    Object? clientReceipts = null,
    Object? supplierReceipts = null,
  }) {
    return _then(_value.copyWith(
      sales: null == sales
          ? _value.sales
          : sales // ignore: cast_nullable_to_non_nullable
              as SalesResponseForDashboard,
      purcheses: null == purcheses
          ? _value.purcheses
          : purcheses // ignore: cast_nullable_to_non_nullable
              as PurchsesResponseForDashboard,
      clientReceipts: null == clientReceipts
          ? _value.clientReceipts
          : clientReceipts // ignore: cast_nullable_to_non_nullable
              as ClientReceiptsResponseForDashboard,
      supplierReceipts: null == supplierReceipts
          ? _value.supplierReceipts
          : supplierReceipts // ignore: cast_nullable_to_non_nullable
              as SupplierReceiptsResponseForDashboard,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SalesResponseForDashboardCopyWith<$Res> get sales {
    return $SalesResponseForDashboardCopyWith<$Res>(_value.sales, (value) {
      return _then(_value.copyWith(sales: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PurchsesResponseForDashboardCopyWith<$Res> get purcheses {
    return $PurchsesResponseForDashboardCopyWith<$Res>(_value.purcheses,
        (value) {
      return _then(_value.copyWith(purcheses: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ClientReceiptsResponseForDashboardCopyWith<$Res> get clientReceipts {
    return $ClientReceiptsResponseForDashboardCopyWith<$Res>(
        _value.clientReceipts, (value) {
      return _then(_value.copyWith(clientReceipts: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SupplierReceiptsResponseForDashboardCopyWith<$Res> get supplierReceipts {
    return $SupplierReceiptsResponseForDashboardCopyWith<$Res>(
        _value.supplierReceipts, (value) {
      return _then(_value.copyWith(supplierReceipts: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DashboardDataImplCopyWith<$Res>
    implements $DashboardDataCopyWith<$Res> {
  factory _$$DashboardDataImplCopyWith(
          _$DashboardDataImpl value, $Res Function(_$DashboardDataImpl) then) =
      __$$DashboardDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SalesResponseForDashboard sales,
      PurchsesResponseForDashboard purcheses,
      ClientReceiptsResponseForDashboard clientReceipts,
      SupplierReceiptsResponseForDashboard supplierReceipts});

  @override
  $SalesResponseForDashboardCopyWith<$Res> get sales;
  @override
  $PurchsesResponseForDashboardCopyWith<$Res> get purcheses;
  @override
  $ClientReceiptsResponseForDashboardCopyWith<$Res> get clientReceipts;
  @override
  $SupplierReceiptsResponseForDashboardCopyWith<$Res> get supplierReceipts;
}

/// @nodoc
class __$$DashboardDataImplCopyWithImpl<$Res>
    extends _$DashboardDataCopyWithImpl<$Res, _$DashboardDataImpl>
    implements _$$DashboardDataImplCopyWith<$Res> {
  __$$DashboardDataImplCopyWithImpl(
      _$DashboardDataImpl _value, $Res Function(_$DashboardDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sales = null,
    Object? purcheses = null,
    Object? clientReceipts = null,
    Object? supplierReceipts = null,
  }) {
    return _then(_$DashboardDataImpl(
      sales: null == sales
          ? _value.sales
          : sales // ignore: cast_nullable_to_non_nullable
              as SalesResponseForDashboard,
      purcheses: null == purcheses
          ? _value.purcheses
          : purcheses // ignore: cast_nullable_to_non_nullable
              as PurchsesResponseForDashboard,
      clientReceipts: null == clientReceipts
          ? _value.clientReceipts
          : clientReceipts // ignore: cast_nullable_to_non_nullable
              as ClientReceiptsResponseForDashboard,
      supplierReceipts: null == supplierReceipts
          ? _value.supplierReceipts
          : supplierReceipts // ignore: cast_nullable_to_non_nullable
              as SupplierReceiptsResponseForDashboard,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardDataImpl implements _DashboardData {
  const _$DashboardDataImpl(
      {required this.sales,
      required this.purcheses,
      required this.clientReceipts,
      required this.supplierReceipts});

  factory _$DashboardDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardDataImplFromJson(json);

  @override
  final SalesResponseForDashboard sales;
  @override
  final PurchsesResponseForDashboard purcheses;
  @override
  final ClientReceiptsResponseForDashboard clientReceipts;
  @override
  final SupplierReceiptsResponseForDashboard supplierReceipts;

  @override
  String toString() {
    return 'DashboardData(sales: $sales, purcheses: $purcheses, clientReceipts: $clientReceipts, supplierReceipts: $supplierReceipts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardDataImpl &&
            (identical(other.sales, sales) || other.sales == sales) &&
            (identical(other.purcheses, purcheses) ||
                other.purcheses == purcheses) &&
            (identical(other.clientReceipts, clientReceipts) ||
                other.clientReceipts == clientReceipts) &&
            (identical(other.supplierReceipts, supplierReceipts) ||
                other.supplierReceipts == supplierReceipts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, sales, purcheses, clientReceipts, supplierReceipts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardDataImplCopyWith<_$DashboardDataImpl> get copyWith =>
      __$$DashboardDataImplCopyWithImpl<_$DashboardDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardDataImplToJson(
      this,
    );
  }
}

abstract class _DashboardData implements DashboardData {
  const factory _DashboardData(
      {required final SalesResponseForDashboard sales,
      required final PurchsesResponseForDashboard purcheses,
      required final ClientReceiptsResponseForDashboard clientReceipts,
      required final SupplierReceiptsResponseForDashboard
          supplierReceipts}) = _$DashboardDataImpl;

  factory _DashboardData.fromJson(Map<String, dynamic> json) =
      _$DashboardDataImpl.fromJson;

  @override
  SalesResponseForDashboard get sales;
  @override
  PurchsesResponseForDashboard get purcheses;
  @override
  ClientReceiptsResponseForDashboard get clientReceipts;
  @override
  SupplierReceiptsResponseForDashboard get supplierReceipts;
  @override
  @JsonKey(ignore: true)
  _$$DashboardDataImplCopyWith<_$DashboardDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
