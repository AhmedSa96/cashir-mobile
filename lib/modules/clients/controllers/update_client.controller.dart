import 'package:cashir/modules/clients/controllers/fetch_clients.controller.dart';
import 'package:cashir/modules/clients/models/client.model.dart';
import 'package:cashir/shared/services/http.service.dart';
import 'package:cashir/shared/services/toastr.service.dart';
import 'package:get/get.dart';

class UpdateClientController extends GetxController {
  execute({
    required int id,
    required ClientModel client,
  }) async {
    final http = Get.find<HttpService>();

    final response =
        await http.patch(url: "/clients/$id", body: client.toJson());

    if (![200, 201].contains(response.statusCode)) {
      Get.find<ToastrService>().error(response.data['message']);
      return;
    }

    Get.find<FetchClientsController>().execute(clearCache: true);
    Get.back();
  }
}
