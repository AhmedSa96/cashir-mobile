import 'package:cashir/modules/receipt_client/controllers/fetch_client_receipts.controller.dart';
import 'package:cashir/shared/services/http.service.dart';
import 'package:cashir/shared/services/toastr.service.dart';
import 'package:get/get.dart';

class DeleteClientReceiptController extends GetxController {
  execute({required int id}) async {
    final http = Get.find<HttpService>();

    final response = await http.delete(url: "/client-receipt/$id");

    if (![200, 201].contains(response.statusCode)) {
      Get.find<ToastrService>().error(response.data['message']);
      return;
    }

    Get.find<FetchClientReceiptsController>().execute(clearCache: true);
    Get.back();
  }
}
