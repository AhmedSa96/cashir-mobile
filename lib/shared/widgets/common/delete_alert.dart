import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/constants/colors.dart' as colors;

void showDeleteAlert({
  required BuildContext context,
  required String text,
  required void Function() onDelete,
}) {
  showBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        // height: 300,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(50),
          boxShadow: const [BoxShadow()],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.dangerous,
              color: colors.buttonDanger,
              size: 64,
            ),
            const SizedBox(height: 32),
            Text(text),
            const SizedBox(height: 32),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: onDelete,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: colors.buttonDanger,
                  ),
                  child: Text(
                    "Delete".tr,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                TextButton(
                  onPressed: () => Get.back(),
                  child: Text(
                    "Cancel".tr,
                    style: const TextStyle(color: colors.buttonDanger),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    },
  );
}
