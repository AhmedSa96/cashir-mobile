import 'package:cashir/modules/system_constatnts/models/constant_parent.model.dart';
import 'package:cashir/modules/system_constatnts/models/constant_parent.state.dart';
import 'package:get/get.dart';

class SystemConstantsController extends GetxController {
  Rx<ConstantParentState> state = const ConstantParentState(
    isLoading: false,
    parents: [],
  ).obs;

  Future<ConstantParentState> getConstantsParent() async {
    state.value = state.value.copyWith(
      isLoading: true,
      parents: [],
    );

    await Future.delayed(const Duration(seconds: 2));

    state.value = state.value.copyWith(
      isLoading: false,
      parents: const [
        ConstantParentModel(id: 1, name: 'Products'),
        ConstantParentModel(id: 2, name: 'clients'),
        ConstantParentModel(id: 3, name: 'suppliers'),
      ],
    );

    return state.value;
  }

  getConstantsByParentId(int parentId) async {
    throw UnimplementedError();
  }
}
