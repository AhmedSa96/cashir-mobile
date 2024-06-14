import 'package:cashir/modules/products/controllers/fetch_products.controller.dart';
import 'package:cashir/modules/products/models/product.model.dart';
import 'package:cashir/shared/services/http.service.dart';
import 'package:cashir/shared/services/toastr.service.dart';
// import 'package:drift/drift.dart';
import 'package:get/get.dart';

// import '../../../shared/database.dart';

class DeleteProductController extends GetxController {
  Future<Product> execute(int id) async {
    final newProduct = await sendDeleteProductRequest(id);

    Get.find<FetchProductsController>().execute(clearCache: true);
    return newProduct;
  }

  Future<Product> sendDeleteProductRequest(int id) async {
    final http = Get.find<HttpService>();

    final res = await http.delete(url: "/products/$id");

    if (![200, 201].contains(res.statusCode)) {
      Get.find<ToastrService>().error(res.data["message"]);
      throw Exception(res.data['message']);
    }

    return Product.fromJson(res.data);
  }

  Future<bool> deleteProductInDatabase(Product product) async {
    // final database = Get.find<AppDatabase>();
    // final result = await database.into(database.productTable).insert(
    //       product.toColumns(),
    //       mode: InsertMode.insertOrReplace,
    //     );

    // return result > 0;
    return false;
  }
}
