import 'package:flutter/material.dart';

import 'package:cashir/shared/layouts/admin.layout.dart';
import 'package:get/get.dart';

class SystemConstantsScreen extends StatelessWidget {
  const SystemConstantsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AdminLayout(title: "System Constants".tr, child: Container());
  }
}
