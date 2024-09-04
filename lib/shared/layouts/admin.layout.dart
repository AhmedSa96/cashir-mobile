import 'package:cashir/modules/auth/controller/auth.controller.dart';
// import 'package:cashir/shared/controllers/layout.controller.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:cashir/shared/constants/colors.dart' as colors;

class AdminLayout extends StatefulWidget {
  final String title;
  final Widget child;
  final Widget? floatingActionButton;
  final List<Widget>? actions;
  // final bool showBottomBar;

  const AdminLayout({
    required this.title,
    required this.child,
    this.floatingActionButton,
    this.actions,
    // this.showBottomBar = true,
    super.key,
  });

  @override
  State<AdminLayout> createState() => _AdminLayoutState();
}

class _AdminLayoutState extends State<AdminLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: colors.primary,
        title: Text(widget.title),
        actions: widget.actions,
      ),
      // bottomNavigationBar: widget.showBottomBar
      //     ? BottomNavigationBar(
      //         items: [
      //           BottomNavigationBarItem(
      //               icon: const Icon(Icons.dashboard), label: "Dashboard".tr),
      //           BottomNavigationBarItem(
      //               icon: const Icon(Icons.file_open), label: "Reports".tr),
      //         ],
      //         onTap: (index) {
      //           final routesByIndex = {
      //             0: "/compony/dashboard",
      //             1: "/compony/reports"
      //           };

      //           Get.offNamed(routesByIndex[index]!);
      //         },
      //         currentIndex: Get.find<LayoutController>().currentIndex,
      //       )
      //     : null,
      body: StreamBuilder(
        stream: Connectivity().onConnectivityChanged,
        builder: (context, snapshot) {
          if (!snapshot.hasData || snapshot.data != ConnectivityResult.wifi) {
            // TODO: remove this comment on release
            // return const _NoConnection();
          }

          return widget.child;
        },
      ),
      floatingActionButton: widget.floatingActionButton,
      drawer: _MainMenu(),
    );
  }
}

class _NoConnection extends StatelessWidget {
  const _NoConnection();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.wifi_off,
            color: colors.primary,
            size: 64,
          ),
          const SizedBox(height: 16),
          Text(
            "you have no internet connection".tr,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: colors.primary,
              fontSize: 32,
            ),
          ),
        ],
      ),
    );
  }
}

class _MainMenu extends StatelessWidget {
  _MainMenu();

  final _authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(0),
            child: Container(
              color: colors.primary,
              alignment: Alignment.center,
              child: Image.asset(
                "assets/images/logo_white.png",
                // width: 100,
              ),
            ),
          ),
          ListTile(
            title: Text("Dashboard".tr),
            leading: const Icon(Icons.dashboard, color: colors.primary),
            onTap: () {
              Get.offNamed('/compony/dashboard');
            },
          ),
          if (_authController.isCompony())
            ListTile(
              title: Text("Products".tr),
              leading: const Icon(Icons.shopping_bag, color: colors.primary),
              onTap: () {
                Get.offNamed('/compony/products');
              },
            ),
          if (_authController.isCompony())
            ListTile(
              title: Text("Clients".tr),
              leading: const Icon(Icons.person, color: colors.primary),
              onTap: () {
                Get.offNamed('/compony/clients');
              },
            ),
          if (_authController.isCompony())
            ListTile(
              title: Text("Suppliers".tr),
              leading: const Icon(Icons.person, color: colors.primary),
              onTap: () {
                Get.offNamed('/compony/suppliers');
              },
            ),
          if (_authController.isCompony())
            ListTile(
              title: Text("Sales".tr),
              leading: const Icon(Icons.shopping_cart, color: colors.primary),
              onTap: () {
                Get.offNamed('/compony/sales');
              },
            ),
          if (_authController.isCompony())
            ListTile(
              title: Text("Purcheses".tr),
              leading: const Icon(Icons.shopping_basket, color: colors.primary),
              onTap: () {
                Get.offNamed('/compony/purcheses');
              },
            ),
          if (_authController.isCompony())
            ListTile(
              title: Text("Clients Receipts".tr),
              leading: const Icon(
                Icons.attach_money_outlined,
                color: colors.primary,
              ),
              onTap: () {
                Get.offNamed('/compony/client-receipts');
              },
            ),
          if (_authController.isCompony())
            ListTile(
              title: Text("Suppliers Receipts".tr),
              leading: const Icon(
                Icons.attach_money_outlined,
                color: colors.primary,
              ),
              onTap: () {
                Get.offNamed('/compony/supplier-receipts');
              },
            ),
          // if (_authController.isCompony())
          //   ListTile(
          //     title: Text("Reports".tr),
          //     leading: const Icon(Icons.analytics, color: colors.primary),
          //     onTap: () {
          //       Get.offNamed('/compony/reports');
          //     },
          //   ),
          if (_authController.isAdmin())
            ListTile(
              title: Text("System Constants".tr),
              leading: const Icon(Icons.settings, color: colors.primary),
              onTap: () {
                Get.offNamed('/admin/constants');
              },
            ),
          ListTile(
            //? is it deferant pages or same page for both admin and compony
            title: Text("Settings".tr),
            leading: const Icon(Icons.settings, color: colors.primary),
            onTap: () {
              Get.offNamed('/compony/settings');
            },
          ),
          ListTile(
            title: Text("Logout".tr),
            leading: const Icon(Icons.logout, color: colors.error),
            onTap: () {
              Get.offAllNamed('/login');
            },
          ),
        ],
      ),
    );
  }
}
