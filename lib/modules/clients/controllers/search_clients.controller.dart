import 'package:cashir/shared/models/search_result.model.dart';
import 'package:cashir/shared/services/http.service.dart';
import 'package:get/get.dart';

class SearchClientsController extends GetxController {
  Future<List<SearchResult>> execute({required String searchKey}) async {
    return await _fetchDataFromServer(searchKey);
  }

  Future<List<SearchResult>> _fetchDataFromServer(String searchKey) async {
    // get http service
    final http = Get.find<HttpService>();

    // send http request to API
    final response = await http.get(
      url: "/clients/search",
      query: {"name": searchKey},
    );

    // check if API returns error
    if (![200, 201].contains(response.statusCode)) {
      return <SearchResult>[];
    }

    final mappedData = response.data
        .map<SearchResult>((json) => SearchResult.fromJson(json))
        .toList();

    return mappedData;
  }
}
