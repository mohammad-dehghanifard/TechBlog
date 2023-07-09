import 'package:flutter/cupertino.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';
import 'package:get/get.dart';

SnackbarController techSnackBar() {
  return Get.snackbar(
      "خطا",
      "هیچ عکسی انتخاب نشده",
      backgroundColor: SolidColors.greenColor,
      colorText: SolidColors.whiteColor,
      snackPosition: SnackPosition.BOTTOM,
      margin: const EdgeInsets.all(8)
  );
}