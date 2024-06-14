import 'package:get/get.dart';
import 'package:cashir/shared/constants/colors.dart' as colors;

class ToastrService {
  void success(String message, {String title = 'Success'}) {
    Get.snackbar(
      title,
      message,
      backgroundColor: colors.success,
      colorText: colors.toastText,
    );
  }

  void warning(String message, {String title = 'Warning'}) {
    Get.snackbar(
      title,
      message,
      backgroundColor: colors.warning,
      colorText: colors.toastText,
    );
  }

  void error(String message, {String title = 'Error'}) {
    Get.snackbar(
      title,
      message,
      backgroundColor: colors.error,
      colorText: colors.toastText,
    );
  }

  void info(String message, {String title = 'Info'}) {
    Get.snackbar(
      title,
      message,
      backgroundColor: colors.info,
      colorText: colors.toastText,
    );
  }
}
