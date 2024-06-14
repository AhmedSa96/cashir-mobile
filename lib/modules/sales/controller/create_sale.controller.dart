import 'package:cashir/modules/sales/controller/fetch_sale.controller.dart';
import 'package:cashir/modules/sales/models/sale.model.dart';
import 'package:cashir/shared/services/http.service.dart';
import 'package:cashir/shared/services/toastr.service.dart';
import 'package:get/get.dart';

class CreateSaleController extends GetxController {
  execute({required Sale sale}) async {
    final http = Get.find<HttpService>();

    final response = await http.post(url: "/sales", body: sale.toJson());

    if (![200, 201].contains(response.statusCode)) {
      Get.find<ToastrService>().error(response.data['message']);
      return;
    }

    Get.find<FetchSalesController>().execute(clearCache: true);
    Get.back();
  }
}
