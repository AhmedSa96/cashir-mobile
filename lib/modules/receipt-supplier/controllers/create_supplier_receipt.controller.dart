import 'package:cashir/modules/receipt-supplier/controllers/fetch_supplier_receipts.controller.dart';
import 'package:cashir/modules/receipt-supplier/models/create_supplier_receipt.model.dart';
import 'package:cashir/shared/services/http.service.dart';
import 'package:cashir/shared/services/toastr.service.dart';
import 'package:get/get.dart';

class CreateSupplierReceiptController extends GetxController {
  execute({required CreateSupplierReceipt receipt}) async {
    final http = Get.find<HttpService>();

    final response =
        await http.post(url: "/supplier-receipt", body: receipt.toJson());

    if (![200, 201].contains(response.statusCode)) {
      Get.find<ToastrService>().error(response.data['message']);
      return;
    }

    Get.find<FetchSupplierReceiptsController>().execute(clearCache: true);
    Get.back();
  }
}
