import 'package:cashir/shared/services/http.service.dart';
import 'package:cashir/shared/services/toastr.service.dart';
import 'package:get/get.dart';

class ChangePasswordController extends GetxController {
  final isLoading = false.obs;

  execute({required Map<String, dynamic> body}) async {
    final http = Get.find<HttpService>();

    _load(true);

    final response = await http.post(url: "/auth/change-password", body: body);

    _load(false);

    if (response.statusCode == 400) {
      Get.find<ToastrService>().error(response.data["message"]);
      return false;
    }

    Get.find<ToastrService>().success("chnage password done".tr);
    return true;
  }

  _load(bool value) => isLoading.value = value;
}
