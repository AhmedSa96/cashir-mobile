import 'package:cashir/modules/receipt-supplier/controllers/fetch_supplier_receipts.controller.dart';
import 'package:cashir/shared/services/http.service.dart';
import 'package:cashir/shared/services/toastr.service.dart';
import 'package:get/get.dart';

class DeleteSupplierReceiptController extends GetxController {
  execute({required int id}) async {
    final http = Get.find<HttpService>();

    final response = await http.delete(url: "/supplier-receipt/$id");

    if (![200, 201].contains(response.statusCode)) {
      Get.find<ToastrService>().error(response.data['message']);
      return;
    }

    Get.find<FetchSupplierReceiptsController>().execute(clearCache: true);
    Get.back();
  }
}
