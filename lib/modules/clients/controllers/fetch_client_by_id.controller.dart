import 'package:cashir/modules/clients/models/client.model.dart';
import 'package:cashir/shared/services/http.service.dart';
import 'package:cashir/shared/services/toastr.service.dart';
import 'package:get/get.dart';

class FetchClientByIdController extends GetxController {
  final isLoading = false.obs;

  Rx<ClientModel>? client;

  /// this function gets client data from server by his id
  /// if client not found will throw error and show error message
  execute({required int id}) async {
    // start loading
    _load(true);

    // get client data from API
    final response = await Get.find<HttpService>().get(url: "/clients/$id");

    // check if client not found on the server, if so show error message and throw exception
    if (response.statusCode == 404) {
      Get.find<ToastrService>().error(response.data["message"]);
      return;
    }

    // map server data to [ClientModel] class and cache it.
    client = ClientModel.fromJson(response.data).obs;

    // stop loading
    _load(false);

    return client?.value;
  }

  void _load(bool value) => isLoading.value = value;
}
