import 'dart:convert';

import 'package:cashir/modules/products/models/product.model.dart';
import 'package:cashir/shared/services/local_db.server.dart';
import 'package:cashir/shared/services/toastr.service.dart';
import 'package:get/get.dart';

class FetchProductByBarcodeController extends GetxController {
  final isLoading = false.obs;

  Rx<Product>? product;

  Future<Product?> execute({required String barcode}) async {
    // start loading
    _load(true);

    final response = await Get.find<LocalDBService>()
        .selectOne(tableName: "Products", where: "barcode = $barcode");

    // check if data not found on the server, if so show error message and throw exception
    if (response == null) {
      Get.find<ToastrService>().error("could not find this product".tr);
      return null;
    }

    // map server data to [Product] class and cache it.
    product = Product.fromJson(jsonDecode(response["data"])).obs;

    // stop loading
    _load(false);

    return product?.value;
  }

  void _load(bool value) => isLoading.value = value;
}
