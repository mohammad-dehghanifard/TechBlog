import 'package:flutter/cupertino.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';
import 'package:get/get.dart';

SnackbarController techSnackBar({required String title,required String content,SnackStatus status = SnackStatus.success}) {
  return Get.snackbar(
      title,
      content,
      backgroundColor: status == SnackStatus.success? SolidColors.greenColor : SolidColors.redColor,
      colorText: SolidColors.whiteColor,
      snackPosition: SnackPosition.BOTTOM,
      margin: const EdgeInsets.all(8),

  );
}

enum SnackStatus{success,error}