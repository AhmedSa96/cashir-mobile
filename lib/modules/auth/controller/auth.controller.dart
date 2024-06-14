import 'dart:convert';

import 'package:cashir/modules/auth/models/auth_status.model.dart';
import 'package:cashir/modules/auth/models/login.request.dart';
import 'package:cashir/modules/auth/models/register.request.dart';
import 'package:cashir/shared/models/user.model.dart';
import 'package:cashir/shared/services/http.service.dart';
import 'package:cashir/shared/services/local_storage.service.dart';
import 'package:cashir/shared/services/toastr.service.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final String _authStatusKey = 'AUTH_STATUS';

  final Rx<AuthStatus> authStatus = const AuthStatus(isLoggedIn: false).obs;

  final http = Get.find<HttpService>();
  final toastr = Get.find<ToastrService>();
  final localStorage = Get.find<LocalStorageService>();

  bool isAdmin() => authStatus.value.user?.userType == UserType.admin;
  bool isCompony() => authStatus.value.user?.userType == UserType.compony;

  @override
  onInit() {
    super.onInit();
    http.onUnauthorizedEvent(() {
      logout();
    });
  }

  Future<AuthStatus> login({required LoginRequest body}) async {
    final res = await http.post(url: "/auth/login", body: body.toJson());
    if (![200, 201].contains(res.statusCode)) {
      toastr.error(res.data['message']);
      return logout();
    }

    authStatus.value = AuthStatus(
      isLoggedIn: true,
      token: res.data["access_token"],
      user: User.fromJson(res.data["user"]),
    );

    await localStorage.write(_authStatusKey, jsonEncode(authStatus.value));

    return authStatus.value;
  }

  Future<bool> register({required RegisterRequest body}) async {
    final res = await http.post(url: "/auth/register", body: body.toJson());

    if (res.statusCode != 200) {
      toastr.error(res.data['message']);
      return false;
    }

    return true;
  }

  Future<AuthStatus> logout() async {
    authStatus.value = const AuthStatus(
      isLoggedIn: false,
      token: null,
      user: null,
    );

    localStorage.remove(_authStatusKey);

    Get.offNamed("/login");

    return authStatus.value;
  }

  updateAuthStatus({required AuthStatus newAuthStatus}) {
    authStatus.value = newAuthStatus;
  }
}
