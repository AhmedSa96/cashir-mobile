import 'package:cashir/modules/sales/controller/fetch_sale.controller.dart';
import 'package:cashir/modules/sales/models/sale.model.dart';
import 'package:cashir/shared/widgets/common/loader.widget.dart';
import 'package:cashir/shared/widgets/common/paginated_list.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:cashir/shared/layouts/admin.layout.dart';
import 'package:intl/intl.dart';
import 'package:reactive_forms/reactive_forms.dart';
import '../../../shared/constants/colors.dart' as app_colors;
import '../../../shared/utils/configure_date.dart';
import '../../../shared/widgets/common/filters_sheet.dart';
import '../../../shared/widgets/common/wrapper.widget.dart';
import '../../../shared/widgets/forms/text_input.widget.dart';
import '../models/fetch_sales.request.dart';

class SalesScreen extends StatefulWidget {
  const SalesScreen({super.key});

  @override
  State<SalesScreen> createState() => _SalesScreenState();
}

class _SalesScreenState extends State<SalesScreen> {
  @override
  void initState() {
    super.initState();

    Get.find<FetchSalesController>().execute();
  }

  @override
  Widget build(BuildContext context) {
    return AdminLayout(
      title: "Sales".tr,
      actions: [
        _FiltersButton(),
      ],
      floatingActionButton: FloatingActionButton(
        backgroundColor: app_colors.primary,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
        onPressed: () {
          Get.toNamed('/compony/sales/create');
        },
      ),
      child: Obx(() {
        final controller = Get.find<FetchSalesController>();

        if (controller.isLoading.isTrue) return const Loader();

        return PaginatedList<SaleResponse>(
            controller: controller,
            listItemBuilder: (item, index) {
              return ListTile(
                title: Row(
                  children: [
                    Text("#${item.id} - "),
                    // ignore: prefer_interpolation_to_compose_strings
                    Text(item.client?.name ?? "(" + "on run sale".tr + ")"),
                  ],
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.remove_red_eye),
                      onPressed: () {},
                      color: app_colors.primary,
                    ),
                    IconButton(
                      icon: const Icon(Icons.archive),
                      onPressed: () {},
                      color: app_colors.secondary,
                    ),
                  ],
                ),
                subtitle: item.createdAt == null
                    ? null
                    : Text(
                        item.createdAt != null
                            ? DateFormat("yyyy-MM-dd").format(item.createdAt!)
                            : "no date",
                      ),
              );
            });
      }),
    );
  }
}

class _FiltersButton extends StatelessWidget {
  final FormGroup _form = FormGroup({
    'idLike': FormControl<int>(),
    "fromDate": FormControl<DateTime>(value: DateTime.now().copyWith(day: 1)),
    "toDate": FormControl<DateTime>(value: DateTime.now()),
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
                title: "id (#)".tr,
                formControlName: "idLike",
                keyboardType: TextInputType.number,
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
    final controller = Get.find<FetchSalesController>();

    final from = configureDate(dates["fromDate"]);
    final to = configureDate(dates["toDate"]);

    controller.filters.value = FetchSalesRequest.fromJson({
      ..._form.value,
      "fromDate": from,
      "toDate": to,
    });

    _form.reset();
    _form.patchValue(dates);

    controller.execute(clearCache: true);

    Get.back();
  }

  void onApply(dates) {
    final controller = Get.find<FetchSalesController>();
    controller.filters.value =
        FetchSalesRequest.fromJson({..._form.value, ...dates});

    controller.execute(clearCache: true);

    Get.back();
  }
}
