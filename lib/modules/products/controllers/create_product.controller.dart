import 'package:cashir/modules/products/controllers/fetch_products.controller.dart';
import 'package:cashir/modules/products/models/product.model.dart';
import 'package:cashir/shared/services/http.service.dart';
import 'package:cashir/shared/services/toastr.service.dart';
// import 'package:drift/drift.dart';
import 'package:get/get.dart';

// import '../../../shared/database.dart';

class CreateProductController extends GetxController {
  Future<Product> excute(Product product) async {
    final newProduct = await sendCreateProductRequest(product);

    Get.find<FetchProductsController>().execute(clearCache: true);
    return newProduct;
  }

  Future<Product> sendCreateProductRequest(Product product) async {
    final http = Get.find<HttpService>();

    final res = await http.post(url: "/products", body: product.toJson());

    if (![200, 201].contains(res.statusCode)) {
      Get.find<ToastrService>().error(res.data["message"]);
      throw Exception(res.data['message']);
    }

    return Product.fromJson(res.data);
  }

  Future<bool> createProductInDatabase(Product product) async {
    // final database = Get.find<AppDatabase>();
    // final result = await database.into(database.productTable).insert(
    //       product.toColumns(),
    //       mode: InsertMode.insertOrReplace,
    //     );

    // return result > 0;
    return false;
  }
}
