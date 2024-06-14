import 'package:get/get.dart';

class LayoutController extends GetxController {
  // final currentIndex = 0.obs;
  get currentIndex {
    final routes = {
      "/compony/dashboard": 0,
      "/compony/reports": 1,
    };

    if (!routes.containsKey(Get.currentRoute)) return 0;
    return routes[Get.currentRoute];
  }
}
