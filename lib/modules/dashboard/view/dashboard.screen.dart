import 'package:cashir/modules/dashboard/controller/fetch_dashboard_data.controller.dart';
import 'package:cashir/modules/dashboard/models/dashboard_data.model.dart';
import 'package:cashir/modules/receipt_client/models/receipt_client.model.dart';
import 'package:cashir/modules/sales/models/sale.model.dart';
import 'package:cashir/shared/layouts/admin.layout.dart';
import 'package:cashir/shared/utils/configure_date.dart';
import 'package:cashir/shared/widgets/common/filters_sheet.dart';
import 'package:cashir/shared/widgets/common/loader.widget.dart';
import 'package:cashir/shared/widgets/common/wrapper.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../shared/constants/colors.dart' as app_colors;
import '../../purcheses/models/purches.model.dart';
import '../../receipt-supplier/models/receipt_supplier.model.dart';
import '../models/fetch_dashboard.request.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final controller = Get.find<FetchDashboardController>();

  final refreshController = RefreshController();

  @override
  void initState() {
    super.initState();
    final from = DateTime.now().copyWith(day: 1);
    final to = DateTime.now();

    controller.filters.value =
        FetchDashboardRequest(fromDate: from, toDate: to);
    controller.execute();
  }

  @override
  Widget build(BuildContext context) {
    return AdminLayout(
      title: "Dashboard".tr,
      actions: [_FilterButton()],
      child: Obx(() {
        if (controller.isLoading.value) return const Loader();

        final List<dynamic> list = [
          ...controller.data.value?.sales.orders ?? [],
          ...controller.data.value?.purcheses.orders ?? [],
          ...controller.data.value?.clientReceipts.orders ?? [],
          ...controller.data.value?.supplierReceipts.orders ?? [],
        ];

        list.sort(
          (a, b) => b.createdAt.compareTo(a.createdAt),
        );

        return SmartRefresher(
          controller: refreshController,
          header: const WaterDropHeader(waterDropColor: app_colors.primary),
          onRefresh: () async {
            refreshController.refreshCompleted();
            await controller.execute(clearCache: true);
          },
          child: ListView(
            children: [
              // const _AdsBanner(),
              _StatisCards(data: controller.data.value),
              Wrapper(
                child: Text(
                  "Latest actions ...".tr,
                  style: const TextStyle(
                    fontSize: 20,
                    color: app_colors.primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              ...list.map(
                (e) {
                  if (e is SaleResponse) {
                    return _SaleListItem(sale: e);
                  }

                  if (e is ClientReceipt) {
                    return _ClientReceiptListItem(receipt: e);
                  }

                  if (e is PurchesResponse) {
                    return _PurchesListItem(purches: e);
                  }

                  if (e is SupplierReceipt) {
                    return _SupplierReceiptListItem(receipt: e);
                  }

                  return Container();
                },
              ),
            ],
          ),
        );
      }),
    );
  }
}

class _FilterButton extends StatelessWidget {
  final FormGroup _form = FormGroup({
    "fromDate": FormControl<DateTime>(value: DateTime.now().copyWith(day: 1)),
    "toDate": FormControl<DateTime>(value: DateTime.now()),
  });

  _FilterButton();

  onApply(Map<String, dynamic> dates) {
    final controller = Get.find<FetchDashboardController>();

    controller.filters.value =
        FetchDashboardRequest.fromJson({..._form.value, ...dates});
    controller.execute(clearCache: true);

    Get.back();
  }

  onReset(Map<String, dynamic> dates) {
    final controller = Get.find<FetchDashboardController>();

    final from = configureDate(dates["fromDate"]);
    final to = configureDate(dates["toDate"]);

    controller.filters.value = FetchDashboardRequest.fromJson({
      ..._form.value,
      "fromDate": from,
      "toDate": to,
    });
    controller.execute(clearCache: true);

    _form.reset();
    _form.patchValue(dates);

    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showFiltersSheet(
          context: context,
          form: _form,
          children: const [
            // Wrapper(
            //     child:
            //         DateInput(title: "From", formControlName: "startDateTime")),
            // SizedBox(height: 20),
            // Wrapper(
            //     child: DateInput(title: "To", formControlName: "endDateTime")),
            // SizedBox(height: 20),
          ],
          onApply: onApply,
          onReset: onReset,
        );
      },
      icon: const Icon(Icons.filter_alt),
    );
  }
}

class _SaleListItem extends StatelessWidget {
  final SaleResponse sale;
  const _SaleListItem({required this.sale});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(" ${sale.client?.name ?? 'N/A'}"),
      subtitle: Text(sale.createdAt!.toIso8601String().substring(0, 10)),
      trailing: Text(
        "${sale.paymentAmount} \$",
        style: const TextStyle(
          color: app_colors.success,
          fontWeight: FontWeight.w700,
          fontSize: 18,
        ),
      ),
    );
  }
}

class _ClientReceiptListItem extends StatelessWidget {
  final ClientReceipt receipt;
  const _ClientReceiptListItem({required this.receipt});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(" ${receipt.client?.name ?? 'N/A'}"),
      subtitle: Text(receipt.createdAt!.toIso8601String().substring(0, 10)),
      trailing: Text(
        "${receipt.amount} \$",
        style: const TextStyle(
          color: app_colors.success,
          fontWeight: FontWeight.w700,
          fontSize: 18,
        ),
      ),
    );
  }
}

class _PurchesListItem extends StatelessWidget {
  final PurchesResponse purches;
  const _PurchesListItem({required this.purches});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(" ${purches.supplier?.name ?? 'N/A'}"),
      subtitle: Text(purches.createdAt!.toIso8601String().substring(0, 10)),
      trailing: Text(
        "${purches.paymentAmount} \$",
        style: const TextStyle(
          color: app_colors.buttonDanger,
          fontWeight: FontWeight.w700,
          fontSize: 18,
        ),
      ),
    );
  }
}

class _SupplierReceiptListItem extends StatelessWidget {
  final SupplierReceipt receipt;
  const _SupplierReceiptListItem({required this.receipt});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(" ${receipt.supplier?.name ?? 'N/A'}"),
      subtitle: Text(receipt.createdAt.toIso8601String().substring(0, 10)),
      trailing: Text(
        "${receipt.amount} \$",
        style: const TextStyle(
          color: app_colors.buttonDanger,
          fontWeight: FontWeight.w700,
          fontSize: 18,
        ),
      ),
    );
  }
}

class _AdsBanner extends StatelessWidget {
  const _AdsBanner();

  @override
  Widget build(BuildContext context) {
    return Wrapper(
      child: Card(
        elevation: 10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                "assets/images/logo.png",
                height: 260,
                width: 260,
                fit: BoxFit.contain,
              ),
            ),
            Wrapper(
              child: Text(
                "Cashir Application".tr,
                style: const TextStyle(
                  fontSize: 20,
                  color: app_colors.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Wrapper(
              child: Text(
                "this is dommy description for test UI only you could ignore this and continue using app !!!!"
                    .tr,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _StatisCards extends StatelessWidget {
  final DashboardData? data;
  const _StatisCards({required this.data});

  @override
  Widget build(BuildContext context) {
    return Wrapper(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _IncomeCard(data: data),
          _OutcomeCard(data: data),
        ],
      ),
    );
  }
}

class _IncomeCard extends StatelessWidget {
  final DashboardData? data;
  const _IncomeCard({required this.data});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    const statisTextStyle = TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    );

    final totalSales = data?.sales.orders.isEmpty ?? true
        ? 0
        : data!.sales.orders
            .map((e) => e.paymentAmount)
            .reduce((value, element) => value += element);
    final totalReceipts = data?.clientReceipts.orders.isEmpty ?? true
        ? 0
        : data!.clientReceipts.orders
            .map((e) => e.amount)
            .reduce((value, element) => value += element);

    final totalAmount = totalSales + totalReceipts;

    return SizedBox(
      height: 200,
      width: size.width * 0.45,
      child: Card(
        elevation: 16,
        color: app_colors.success,
        child: Wrapper(
          child: Column(
            children: [
              Text(
                "Income".tr,
                style: statisTextStyle.copyWith(fontSize: 18),
              ),
              const SizedBox(height: 32),
              Column(
                children: [
                  Text(
                    "Total Amount".tr,
                    style: statisTextStyle,
                  ),
                  Text(
                    "$totalAmount \$",
                    style:
                        statisTextStyle.copyWith(color: Colors.grey.shade800),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Column(
                children: [
                  Text(
                    "Orders count : ".tr,
                    style: statisTextStyle,
                  ),
                  Text(
                    "${(data?.sales.orders.length ?? 0) + (data?.clientReceipts.orders.length ?? 0)}",
                    style:
                        statisTextStyle.copyWith(color: Colors.grey.shade800),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _OutcomeCard extends StatelessWidget {
  final DashboardData? data;

  const _OutcomeCard({required this.data});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    const statisTextStyle = TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    );

    final totalPurcheses = data?.purcheses.orders.isEmpty ?? true
        ? 0
        : data!.purcheses.orders
            .map((e) => e.paymentAmount)
            .reduce((value, element) => value += element);
    final totalReceipts = data?.supplierReceipts.orders.isEmpty ?? true
        ? 0
        : data!.supplierReceipts.orders
            .map((e) => e.amount)
            .reduce((value, element) => value += element);

    final totalAmount = totalPurcheses + totalReceipts;

    return SizedBox(
      height: 200,
      width: size.width * 0.45,
      child: Card(
        elevation: 16,
        color: app_colors.buttonDanger,
        child: Wrapper(
          child: Column(
            children: [
              Text(
                "Outcome".tr,
                style: statisTextStyle.copyWith(fontSize: 18),
              ),
              const SizedBox(height: 32),
              Column(
                children: [
                  Text(
                    "Total Amount".tr,
                    style: statisTextStyle,
                  ),
                  Text(
                    "$totalAmount \$",
                    style:
                        statisTextStyle.copyWith(color: Colors.grey.shade800),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Column(
                children: [
                  Text(
                    "Orders count : ".tr,
                    style: statisTextStyle,
                  ),
                  Text(
                    "${(data?.purcheses.orders.length ?? 0) + (data?.supplierReceipts.orders.length ?? 0)}",
                    style:
                        statisTextStyle.copyWith(color: Colors.grey.shade800),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
