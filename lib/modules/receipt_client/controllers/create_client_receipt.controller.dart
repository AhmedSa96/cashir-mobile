import 'package:cashir/modules/receipt_client/controllers/fetch_client_receipts.controller.dart';
import 'package:cashir/modules/receipt_client/models/create_client_receipt.model.dart';
import 'package:cashir/shared/services/http.service.dart';
import 'package:cashir/shared/services/toastr.service.dart';
import 'package:get/get.dart';

class CreateClientReceiptController extends GetxController {
  execute({required CreateClientReceipt receipt}) async {
    final http = Get.find<HttpService>();

    final response =
        await http.post(url: "/client-receipt", body: receipt.toJson());

    if (![200, 201].contains(response.statusCode)) {
      Get.find<ToastrService>().error(response.data['message']);
      return;
    }

    Get.find<FetchClientReceiptsController>().execute(clearCache: true);
    Get.back();
  }
}
