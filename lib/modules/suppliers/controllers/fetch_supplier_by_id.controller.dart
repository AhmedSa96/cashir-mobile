import 'package:cashir/modules/suppliers/models/supplier.model.dart';
import 'package:cashir/shared/services/http.service.dart';
import 'package:cashir/shared/services/toastr.service.dart';
import 'package:get/get.dart';

class FetchSupplierByIdController extends GetxController {
  final isLoading = false.obs;

  Rx<SupplierModel>? supplier;

  Future<SupplierModel?> execute({required int id}) async {
    // start loading
    _load(true);

    final response = await Get.find<HttpService>().get(url: "/suppliers/$id");

    // check if data not found on the server, if so show error message and throw exception
    if (response.statusCode == 404) {
      Get.find<ToastrService>().error(response.data["message"]);
      return null;
    }

    // map server data to [SupplierModel] class and cache it.
    supplier = SupplierModel.fromJson(response.data).obs;

    // stop loading
    _load(false);

    return supplier?.value;
  }

  void _load(bool value) => isLoading.value = value;
}
