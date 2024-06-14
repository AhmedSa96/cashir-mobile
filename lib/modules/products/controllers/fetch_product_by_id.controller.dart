import 'package:cashir/modules/products/models/product.model.dart';
import 'package:cashir/shared/services/http.service.dart';
import 'package:get/get.dart';

class FetchProductByIdController extends GetxController {
  // inject http service
  final http = Get.find<HttpService>();

  // product item
  Rx<Product>? product;
  final isLoading = false.obs;

  /// this method will fetch product from the server by id,
  /// this method will be once [EditProductScreen] is loaded
  Future<bool> fetch({required int id}) async {
    // start loading state
    _load(true);

    // send http request to fetch products from the server
    final response = await http.get<Map<String, dynamic>>(url: '/products/$id');

    // stop loading state
    _load(false);

    // handle the response
    return _handleResponse(response);
  }

  /// this method will handle the response from the server,
  /// and return true if the request is success,
  /// otherwise it will return false,
  /// this method will also cache the response mapped to [product]
  bool _handleResponse(AppResponse<Map<String, dynamic>> response) {
    // check if the request is failed
    if (response.statusCode != 200) return false;

    // map response to [Product] object
    product = Product.fromJson(response.data).obs;

    // all process is done
    return true;
  }

  /// this method will start or stop the loading state
  void _load(bool value) {
    isLoading.value = value;
  }
}
