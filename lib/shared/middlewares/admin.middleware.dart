import 'package:cashir/modules/auth/controller/auth.controller.dart';
import 'package:cashir/shared/models/user.model.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AdminMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    final authStatus = Get.find<AuthController>().authStatus.value;

    return authStatus.user?.userType == UserType.admin
        ? null
        : const RouteSettings(name: "/compony/dashboard");
  }
}
