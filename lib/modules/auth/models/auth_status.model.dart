import 'package:cashir/shared/models/user.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_status.model.freezed.dart';
part 'auth_status.model.g.dart';

@freezed
class AuthStatus with _$AuthStatus {
  const factory AuthStatus({
    required bool isLoggedIn,
    String? token,
    User? user,
  }) = _AuthStatus;

  factory AuthStatus.fromJson(Map<String, dynamic> json) =>
      _$AuthStatusFromJson(json);
}
