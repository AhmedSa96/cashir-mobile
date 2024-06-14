import 'package:cashir/modules/suppliers/controllers/fetch_suppliers.controller.dart';
import 'package:cashir/modules/suppliers/models/supplier.model.dart';
import 'package:cashir/shared/services/http.service.dart';
import 'package:cashir/shared/services/toastr.service.dart';
import 'package:get/get.dart';

class UpdateSupplierController extends GetxController {
  execute({required int id, required SupplierModel supplier}) async {
    final http = Get.find<HttpService>();

    final response =
        await http.patch(url: "/suppliers/$id", body: supplier.toJson());

    if (![200, 201].contains(response.statusCode)) {
      Get.find<ToastrService>().error(response.data['message']);
      return;
    }

    Get.find<FetchSuppliersController>().execute(clearCache: true);
    Get.back();
  }
}
