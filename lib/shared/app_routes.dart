// ignore_for_file: constant_identifier_names

import 'package:cashir/modules/clients/views/create_client.screen.dart';
import 'package:cashir/modules/clients/views/edit_client.screen.dart';
import 'package:cashir/modules/dashboard/view/dashboard.screen.dart';
import 'package:cashir/modules/employees/views/employees.screen.dart';
import 'package:cashir/modules/purcheses/views/create_purches.screen.dart';
import 'package:cashir/modules/receipt-supplier/views/create_supplier_receipt.screen.dart';
import 'package:cashir/modules/receipt-supplier/views/supplier_receipts.screen.dart';
import 'package:cashir/modules/receipt_client/views/client_receipts.screen.dart';
import 'package:cashir/modules/receipt_client/views/create_client_receipt.screen.dart';
import 'package:cashir/modules/sales/views/create_sale.screen.dart';
import 'package:cashir/modules/sales/views/sales.screen.dart';
import 'package:cashir/modules/products/views/create_product.screen.dart';
import 'package:cashir/modules/products/views/product.screen.dart';
import 'package:cashir/modules/purcheses/views/purcheses.screen.dart';
import 'package:cashir/modules/reports/views/reports.screen.dart';
import 'package:cashir/modules/settings/views/settings.screen.dart';
import 'package:cashir/modules/splash/view/splash.screen.dart';
import 'package:cashir/modules/suppliers/views/create_supplier.screen.dart';
import 'package:cashir/modules/suppliers/views/edit_supplier.screen.dart';
import 'package:cashir/modules/suppliers/views/suppliers.screen.dart';
import 'package:cashir/modules/system_constatnts/views/system_constants.screen.dart';
import 'package:cashir/shared/middlewares/admin.middleware.dart';
import 'package:cashir/shared/middlewares/auth.middleware.dart';
import 'package:get/get.dart';

import '../modules/auth/view/login/login.screen.dart';
import '../modules/auth/view/register/register.screen.dart';
import '../modules/clients/views/clients.screen.dart';
import '../modules/products/views/edit_product.screen.dart';

const DEFAULT_ROUTE = '/';

List<GetPage> appRoutes = [
  // splash screen
  GetPage(
    name: '/',
    page: () => const SplashScreen(),
  ),

  // auth routes
  GetPage(
    name: '/login',
    page: () => LoginScreen(),
  ),
  GetPage(
    name: '/register',
    page: () => RegisterScreen(),
  ),

  // admin routes
  GetPage(
    name: '/compony/dashboard',
    page: () => const DashboardScreen(),
    middlewares: [AuthMiddleware()],
  ),

  // products routes
  GetPage(
    name: '/compony/products',
    page: () => const ProductsScreen(),
    middlewares: [AuthMiddleware()],
  ),
  GetPage(
    name: '/compony/products/create',
    page: () => CreateProductScreen(),
    middlewares: [AuthMiddleware()],
  ),
  GetPage(
    name: '/compony/products/:id/edit',
    page: () => const EditProductScreen(),
    middlewares: [AuthMiddleware()],
  ),

  // clients routes
  GetPage(
    name: '/compony/clients',
    page: () => const ClientsScreen(),
    middlewares: [AuthMiddleware()],
  ),
  GetPage(
    name: '/compony/clients/create',
    page: () => CreateClientScreen(),
    middlewares: [AuthMiddleware()],
  ),
  GetPage(
    name: '/compony/clients/:id/edit',
    page: () => const EditClientScreen(),
    middlewares: [AuthMiddleware()],
  ),

  // suppliers routes
  GetPage(
    name: '/compony/suppliers',
    page: () => const SuppliersScreen(),
    middlewares: [AuthMiddleware()],
  ),
  GetPage(
    name: '/compony/suppliers/create',
    page: () => CreateSupplierScreen(),
    middlewares: [AuthMiddleware()],
  ),
  GetPage(
    name: '/compony/suppliers/:id/edit',
    page: () => const EditSupplierScreen(),
    middlewares: [AuthMiddleware()],
  ),

  GetPage(
    name: '/compony/sales',
    page: () => const SalesScreen(),
    middlewares: [AuthMiddleware()],
  ),
  GetPage(
    name: '/compony/sales/create',
    page: () => const CreateSaleScreen(),
    middlewares: [AuthMiddleware()],
  ),
  GetPage(
    name: '/compony/purcheses',
    page: () => const PurchesesScreen(),
    middlewares: [AuthMiddleware()],
  ),
  GetPage(
    name: '/compony/purcheses/create',
    page: () => const CreatePurchesScreen(),
    middlewares: [AuthMiddleware()],
  ),
  GetPage(
    name: '/compony/client-receipts',
    page: () => const ClientReceiptsScreen(),
    middlewares: [AuthMiddleware()],
  ),
  GetPage(
    name: '/compony/client-receipts/create',
    page: () => CreateClientReceiptScreen(),
    middlewares: [AuthMiddleware()],
  ),
  GetPage(
    name: '/compony/supplier-receipts',
    page: () => const SupplierReceiptsScreen(),
    middlewares: [AuthMiddleware()],
  ),
  GetPage(
    name: '/compony/supplier-receipts/create',
    page: () => CreateSupplierReceiptScreen(),
    middlewares: [AuthMiddleware()],
  ),

  GetPage(
    name: '/compony/reports',
    page: () => const ReportsScreen(),
    middlewares: [AuthMiddleware()],
  ),
  GetPage(
    name: '/compony/settings',
    page: () => const SettingsScreen(),
    middlewares: [AuthMiddleware()],
  ),
  GetPage(
    name: '/compony/employees',
    page: () => const EmployeesScreen(),
    middlewares: [AuthMiddleware()],
  ),

  // admin routes
  GetPage(
    name: '/admin/constants',
    page: () => const SystemConstantsScreen(),
    middlewares: [AuthMiddleware(), AdminMiddleware()],
  ),
];
