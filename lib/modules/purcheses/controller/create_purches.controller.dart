import 'package:cashir/modules/purcheses/controller/fetch_purcheses.controller.dart';
import 'package:cashir/modules/purcheses/models/purches.model.dart';
import 'package:cashir/shared/services/http.service.dart';
import 'package:cashir/shared/services/toastr.service.dart';
import 'package:get/get.dart';

class CreatePurchesController extends GetxController {
  execute({required Purches purches}) async {
    final http = Get.find<HttpService>();

    final response = await http.post(url: "/purcheses", body: purches.toJson());

    if (![200, 201].contains(response.statusCode)) {
      Get.find<ToastrService>().error(response.data['message']);
      return;
    }

    Get.find<FetchPurchesesController>().execute(clearCache: true);
    Get.back();
  }
}
