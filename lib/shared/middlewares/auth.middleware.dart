import 'package:cashir/modules/auth/controller/auth.controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    final authStatus = Get.find<AuthController>().authStatus.value;

    return authStatus.isLoggedIn ? null : const RouteSettings(name: "/login");
  }
}
