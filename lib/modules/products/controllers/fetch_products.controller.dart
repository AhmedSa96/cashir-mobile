import 'package:cashir/modules/products/models/fetch_products.request.dart';
import 'package:cashir/modules/products/models/product.model.dart';
import 'package:cashir/shared/services/http.service.dart';
import 'package:cashir/shared/services/toastr.service.dart';
import 'package:cashir/shared/controllers/fetch_data.controller.dart';
import 'package:cashir/shared/models/paginated_data.model.dart';
import 'package:get/get.dart';

class FetchProductsController extends FetchDataController<Product> {
  final filters = const FetchProductsRequest().obs;

  final Rx<PaginatedData<Product>?> products = Rx(null);

  final isLoading = false.obs;

  final Rx<String> error = ''.obs;

  @override
  Future<PaginatedData<Product>> execute({clearCache = false}) async {
    // returns chached data if there and no need for clear
    if (products.value != null && !clearCache) return products.value!;

    // start loading
    _load(true);

    // fetch & store data from API
    await _fetchDataFromServer();

    // stop loading
    _load(false);

    return products.value ?? PaginatedData.empty();
  }

  @override
  Future<PaginatedData<Product>> firstPage() async {
    filters.value = filters.value.copyWith(page: 1);

    return await execute(clearCache: true);
  }

  @override
  Future<PaginatedData<Product>> toPage(int page) async {
    filters.value = filters.value.copyWith(page: page);

    return await execute(clearCache: true);
  }

  Future<void> _fetchDataFromServer() async {
    // get http service
    final http = Get.find<HttpService>();

    // send http request to API
    final response = await http.get(url: "/products", query: filters.toJson());

    // check if API returns error
    if (![200, 201].contains(response.statusCode)) {
      Get.find<ToastrService>().error(response.data['message']);
      return;
    }

    // map and cache the data on local variable
    products.value = PaginatedData.fromJson(
      json: response.data,
      fromJson: Product.fromJson,
    );
  }

  /// this method will start or stop the loading state
  void _load(bool value) => isLoading.value = value;
}
