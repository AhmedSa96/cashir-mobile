import 'package:cashir/modules/dashboard/models/fetch_dashboard.request.dart';
import 'package:cashir/shared/services/http.service.dart';
import 'package:cashir/shared/services/toastr.service.dart';
import 'package:get/get.dart';

import '../models/dashboard_data.model.dart';

class FetchDashboardController extends GetxController {
  final filters = const FetchDashboardRequest().obs;

  final Rx<DashboardData?> data = Rx(null);

  final isLoading = false.obs;

  final Rx<String> error = ''.obs;

  Future<DashboardData?> execute({clearCache = false}) async {
    // returns chached data if there and no need for clear
    if (data.value != null && !clearCache) return data.value!;

    // start loading
    _load(true);

    // fetch & store data from API
    await _fetchDataFromServer();

    // stop loading
    _load(false);

    return data.value;
  }

  Future<void> _fetchDataFromServer() async {
    // get http service
    final http = Get.find<HttpService>();

    // send http request to API
    final response = await http.get(url: "/dashboard", query: filters.toJson());

    // check if API returns error
    if (![200, 201].contains(response.statusCode)) {
      Get.find<ToastrService>().error(response.data['message']);
      return;
    }

    // map and cache the data on local variable
    data.value = DashboardData.fromJson(response.data);
  }

  /// this method will start or stop the loading state
  void _load(bool value) => isLoading.value = value;
}
