import 'package:cashir/shared/models/paginated_data.model.dart';
import 'package:get/get.dart';

abstract class FetchDataController<T> extends GetxController {
  Future<PaginatedData<T>> execute();
  Future<PaginatedData<T>> firstPage();
  Future<PaginatedData<T>> toPage(int page);
}
