import 'package:cashir/modules/purcheses/models/fetch_purcheses.request.dart';
import 'package:cashir/modules/purcheses/models/purches.model.dart';
import 'package:cashir/shared/services/http.service.dart';
import 'package:cashir/shared/services/toastr.service.dart';
import 'package:cashir/shared/controllers/fetch_data.controller.dart';
import 'package:cashir/shared/models/paginated_data.model.dart';
import 'package:get/get.dart';

class FetchPurchesesController extends FetchDataController<PurchesResponse> {
  final filters = FetchPurchesesRequest(
    fromDate: DateTime.now().copyWith(day: 1),
    toDate: DateTime.now(),
  ).obs;

  final Rx<PaginatedData<PurchesResponse>?> purcheses = Rx(null);

  final isLoading = false.obs;

  final Rx<String> error = ''.obs;

  @override
  Future<PaginatedData<PurchesResponse>> execute({clearCache = false}) async {
    // returns chached data if there and no need for clear
    if (purcheses.value != null && !clearCache) return purcheses.value!;

    // start loading
    _load(true);

    // fetch & store data from API
    await _fetchDataFromServer();

    // stop loading
    _load(false);

    return purcheses.value ?? PaginatedData.empty();
  }

  @override
  Future<PaginatedData<PurchesResponse>> firstPage() async {
    filters.value = filters.value.copyWith(page: 1);

    return await execute(clearCache: true);
  }

  @override
  Future<PaginatedData<PurchesResponse>> toPage(int page) async {
    filters.value = filters.value.copyWith(page: page);

    return await execute(clearCache: true);
  }

  Future<void> _fetchDataFromServer() async {
    // get http service
    final http = Get.find<HttpService>();

    // send http request to API
    final response = await http.get(url: "/purcheses", query: filters.toJson());

    // check if API returns error
    if (![200, 201].contains(response.statusCode)) {
      Get.find<ToastrService>().error(response.data['message']);
      return;
    }

    // map and cache the data on local variable
    purcheses.value = PaginatedData.fromJson(
      json: response.data,
      fromJson: PurchesResponse.fromJson,
    );
  }

  /// this method will start or stop the loading state
  void _load(bool value) => isLoading.value = value;
}
