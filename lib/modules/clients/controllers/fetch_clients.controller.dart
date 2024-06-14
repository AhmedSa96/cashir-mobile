import 'package:cashir/modules/clients/models/client.model.dart';
import 'package:cashir/modules/clients/models/fetch_clients.request.dart';
import 'package:cashir/shared/controllers/fetch_data.controller.dart';
import 'package:cashir/shared/models/paginated_data.model.dart';
import 'package:cashir/shared/services/http.service.dart';
import 'package:cashir/shared/services/toastr.service.dart';
import 'package:get/get.dart';

class FetchClientsController extends FetchDataController<ClientModel> {
  final filters = const FetchClientsRequest().obs;

  final Rx<PaginatedData<ClientModel>?> clients = Rx(null);

  final isLoading = false.obs;

  final Rx<String> error = ''.obs;

  /// this method will fetch clients from the server,
  /// and cache the response to [clients] variable
  /// this method will be once [ClientsScreen] is loaded
  /// if the response is already fetched, it will return true
  /// otherwise it will return false and the user will be able to fetch again
  @override
  execute({clearCache = false}) async {
    // returns chached data if there and no need for clear
    if (clients.value != null && !clearCache) return clients.value!;

    // start loading
    _load(true);

    // fetch & store data from API
    await _fetchDataFromServer();

    // stop loading
    _load(false);

    return clients.value ?? PaginatedData.empty();
  }

  @override
  Future<PaginatedData<ClientModel>> firstPage() async {
    filters.value = filters.value.copyWith(page: 1);

    return await execute(clearCache: true);
  }

  @override
  Future<PaginatedData<ClientModel>> toPage(int page) async {
    filters.value = filters.value.copyWith(page: page);

    return await execute(clearCache: true);
  }

  Future<void> _fetchDataFromServer() async {
    // get http service
    final http = Get.find<HttpService>();

    // send http request to API
    final response = await http.get(url: "/clients", query: filters.toJson());

    // check if API returns error
    if (![200, 201].contains(response.statusCode)) {
      Get.find<ToastrService>().error(response.data['message']);
      return;
    }

    // map and cache the data on local variable
    clients.value = PaginatedData.fromJson(
      json: response.data,
      fromJson: ClientModel.fromJson,
    );
  }

  /// this method will start or stop the loading state
  void _load(bool value) => isLoading.value = value;
}
