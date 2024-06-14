import 'package:cashir/modules/clients/controllers/delete_client.controller.dart';
import 'package:cashir/modules/clients/controllers/fetch_clients.controller.dart';
import 'package:cashir/modules/clients/models/client.model.dart';
import 'package:cashir/modules/clients/models/fetch_clients.request.dart';
import 'package:cashir/shared/layouts/admin.layout.dart';
import 'package:cashir/shared/widgets/common/delete_alert.dart';
import 'package:cashir/shared/widgets/common/loader.widget.dart';
import 'package:cashir/shared/widgets/common/paginated_list.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../shared/constants/colors.dart' as colors;
import '../../../shared/widgets/common/filters_sheet.dart';
import '../../../shared/widgets/common/wrapper.widget.dart';
import '../../../shared/widgets/forms/text_input.widget.dart';

class ClientsScreen extends StatefulWidget {
  const ClientsScreen({super.key});

  @override
  State<ClientsScreen> createState() => _ClientsScreenState();
}

class _ClientsScreenState extends State<ClientsScreen> {
  final controller = Get.find<FetchClientsController>();

  @override
  void initState() {
    super.initState();

    controller.execute();
  }

  @override
  Widget build(BuildContext context) {
    return AdminLayout(
      title: "Clients".tr,
      showBottomBar: false,
      floatingActionButton: FloatingActionButton(
        backgroundColor: colors.primary,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
        onPressed: () {
          Get.toNamed('/compony/clients/create');
        },
      ),
      actions: [_FiltersButton()],
      child: Obx(() {
        if (controller.isLoading.isTrue) return const Loader();

        return PaginatedList(
          controller: controller,
          listItemBuilder: (item, index) {
            return ListTile(
              title: Text(item.name),
              // subtitle: Text(item.createdAt),
              onTap: () => Get.toNamed('/compony/clients/${item.id}/edit'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _DeleteButton(client: item),
                  IconButton(
                    icon: const Icon(Icons.edit, color: colors.buttonPrimary),
                    onPressed: () =>
                        Get.toNamed('/compony/clients/${item.id}/edit'),
                  ),
                ],
              ),
            );
          },
        );
      }),
    );
  }
}

class _DeleteButton extends StatelessWidget {
  final ClientModel client;

  const _DeleteButton({required this.client});

  remove(BuildContext context) {
    showDeleteAlert(
      context: context,
      text: "Do you want delete this client?".tr,
      onDelete: () {
        Get.find<DeleteClientController>().execute(id: client.id!);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.delete, color: colors.buttonDanger),
      onPressed: () => remove(context),
    );
  }
}

class _FiltersButton extends StatelessWidget {
  final FormGroup _form = FormGroup({
    'search': FormControl(),
    "fromDate": FormControl<DateTime>(),
    "toDate": FormControl<DateTime>(),
  });

  _FiltersButton();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showFiltersSheet(
          context: context,
          form: _form,
          children: [
            Wrapper(
              child: TextInput(
                title: "name".tr,
                formControlName: "search",
              ),
            ),
          ],
          onApply: onApply,
          onReset: onReset,
        );
      },
      icon: const Icon(Icons.filter_alt),
    );
  }

  void onReset(dates) {
    final controller = Get.find<FetchClientsController>();

    controller.filters.value = FetchClientsRequest.fromJson({..._form.value});

    _form.reset();

    controller.execute(clearCache: true);

    Get.back();
  }

  void onApply(dates) {
    final controller = Get.find<FetchClientsController>();
    controller.filters.value =
        FetchClientsRequest.fromJson({..._form.value, ...dates});

    controller.execute(clearCache: true);

    Get.back();
  }
}
