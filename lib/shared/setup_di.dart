import 'package:cashir/modules/clients/controllers/create_client.controller.dart';
import 'package:cashir/modules/clients/controllers/delete_client.controller.dart';
import 'package:cashir/modules/clients/controllers/fetch_client_by_id.controller.dart';
import 'package:cashir/modules/clients/controllers/fetch_clients.controller.dart';
import 'package:cashir/modules/clients/controllers/search_clients.controller.dart';
import 'package:cashir/modules/clients/controllers/update_client.controller.dart';
import 'package:cashir/modules/dashboard/controller/fetch_dashboard_data.controller.dart';
import 'package:cashir/modules/products/controllers/delete_product.controller.dart';
import 'package:cashir/modules/products/controllers/fetch_product_by_barcode.controller.dart';
import 'package:cashir/modules/products/controllers/fetch_product_by_id.controller.dart';
import 'package:cashir/modules/products/controllers/fetch_products.controller.dart';
import 'package:cashir/modules/products/controllers/search_product.controller.dart';
import 'package:cashir/modules/products/controllers/update_product.controller.dart';
import 'package:cashir/modules/purcheses/controller/create_purches.controller.dart';
import 'package:cashir/modules/purcheses/controller/fetch_purcheses.controller.dart';
import 'package:cashir/modules/receipt-supplier/controllers/create_supplier_receipt.controller.dart';
import 'package:cashir/modules/receipt-supplier/controllers/delete_supplier_receipt.controller.dart';
import 'package:cashir/modules/receipt-supplier/controllers/fetch_supplier_receipts.controller.dart';
import 'package:cashir/modules/receipt_client/controllers/create_client_receipt.controller.dart';
import 'package:cashir/modules/receipt_client/controllers/delete_client_receipt.controller.dart';
import 'package:cashir/modules/receipt_client/controllers/fetch_client_receipts.controller.dart';
import 'package:cashir/modules/sales/controller/create_sale.controller.dart';
import 'package:cashir/modules/sales/controller/fetch_sale.controller.dart';
import 'package:cashir/modules/settings/controllers/chnage_password.controller.dart';
import 'package:cashir/modules/suppliers/controllers/create_supplier.controller.dart';
import 'package:cashir/modules/suppliers/controllers/delete_supplier.controller.dart';
import 'package:cashir/modules/suppliers/controllers/fetch_supplier_by_id.controller.dart';
import 'package:cashir/modules/suppliers/controllers/fetch_suppliers.controller.dart';
import 'package:cashir/modules/suppliers/controllers/search_suppliers.controller.dart';
import 'package:cashir/modules/suppliers/controllers/update_supplier.controller.dart';
import 'package:cashir/shared/controllers/layout.controller.dart';
import 'package:cashir/shared/services/http.service.dart';
import 'package:cashir/shared/services/local_db.server.dart';
import 'package:cashir/shared/services/local_storage.service.dart';
import 'package:cashir/shared/services/toastr.service.dart';
import 'package:get/instance_manager.dart';

import '../modules/auth/controller/auth.controller.dart';
import '../modules/products/controllers/create_product.controller.dart';
import '../modules/products/controllers/sync_products.controller.dart';
// import 'database.dart';

void setupDI() {
  // app services
  Get.put(LocalStorageService());
  Get.put(HttpService());
  Get.put(ToastrService());
  Get.put(LocalDBService());
  Get.put(LayoutController());
  // app controllers
  Get.put(AuthController());

  // products controllers
  Get.put(CreateProductController());
  Get.put(FetchProductsController());
  Get.put(SearchProductsController());
  Get.put(FetchProductByIdController());
  Get.put(FetchProductByBarcodeController());
  Get.put(UpdateProductController());
  Get.put(DeleteProductController());
  Get.put(SyncProductsController());

  // clients controllers
  Get.put(FetchClientsController());
  Get.put(SearchClientsController());
  Get.put(FetchClientByIdController());
  Get.put(CreateClientController());
  Get.put(DeleteClientController());
  Get.put(UpdateClientController());

  // supplier controllers
  Get.put(FetchSuppliersController());
  Get.put(FetchSupplierByIdController());
  Get.put(SearchSuppliersController());
  Get.put(CreateSupplierController());
  Get.put(DeleteSupplierController());
  Get.put(UpdateSupplierController());

  // sales controllers
  Get.put(FetchSalesController());
  Get.put(CreateSaleController());

  // purcheses controllers
  Get.put(FetchPurchesesController());
  Get.put(CreatePurchesController());

  // client receipts controllers
  Get.put(FetchClientReceiptsController());
  Get.put(CreateClientReceiptController());
  Get.put(DeleteClientReceiptController());

  // supplier receipts controllers
  Get.put(FetchSupplierReceiptsController());
  Get.put(CreateSupplierReceiptController());
  Get.put(DeleteSupplierReceiptController());

  Get.put(ChangePasswordController());
  // database connection
  // Get.put(AppDatabase());

  Get.put(FetchDashboardController());
}
