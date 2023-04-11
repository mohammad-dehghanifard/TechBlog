import 'package:flutter/material.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';
import 'package:flutter_techblog/core/constants/style/text_styles.dart';
import 'package:get/get.dart';

import 'bottom/back_bottom_widget.dart';

AppBar articleAppBar({required Size size,required String title}) {
  return AppBar(
    backgroundColor: SolidColors.scaffoldColor,
    elevation: 0,
    actions: [
      SizedBox(
        width: size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Text(title,style: ApplicationTextStyle.normalTextStyle.apply(color: SolidColors.colorPrimary)),
            ),
            BackBtn(onTap: () => Get.back(),),
          ],
        ),
      )
    ],
  );
}
