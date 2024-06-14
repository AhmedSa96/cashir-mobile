import 'package:cashir/modules/products/models/fetch_products.request.dart';
import 'package:cashir/modules/products/models/product.model.dart';
import 'package:cashir/modules/products/models/product.table.dart';
import 'package:cashir/shared/services/http.service.dart';
import 'package:cashir/shared/services/local_db.server.dart';
import 'package:cashir/shared/services/toastr.service.dart';
import 'package:cashir/shared/models/paginated_data.model.dart';
import 'package:get/get.dart';

class SyncProductsController extends GetxController {
  final filters = const FetchProductsRequest(page: 1, perPage: 40).obs;

  final isLoading = false.obs;

  Future<void> execute({clearCache = false}) async {
    // start loading
    _load(true);

    // fetch all product pages
    bool hasNext = false;
    final List<Map<String, dynamic>> products = [];
    do {
      final page = await _fetchDataFromServer();
      products.addAll(page.data.map<Map<String, dynamic>>(
          (e) => ProductTable.fromProduct(e).toJson()));
      hasNext = page.meta?.nextPage != null;
    } while (hasNext);

    final database = Get.find<LocalDBService>();

    // delete product table data from local database
    await database.trancateTable(tableName: "Products");

    // save all products in local database
    await database.insertMany(tableName: "Products", data: products);

    // stop loading
    _load(false);
  }

  Future<PaginatedData<Product>> _fetchDataFromServer() async {
    // get http service
    final http = Get.find<HttpService>();

    // send http request to API
    final response = await http.get(url: "/products", query: filters.toJson());

    // check if API returns error
    if (![200, 201].contains(response.statusCode)) {
      Get.find<ToastrService>().error(response.data['message']);
      return PaginatedData.empty();
    }

    // map and return
    return PaginatedData.fromJson(
      json: response.data,
      fromJson: Product.fromJson,
    );
  }

  /// this method will start or stop the loading state
  void _load(bool value) => isLoading.value = value;
}
