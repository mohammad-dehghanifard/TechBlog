import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_techblog/controller/article_controller/article_manage_controller.dart';
import 'package:flutter_techblog/core/constants/style/text_styles.dart';
import 'package:flutter_techblog/core/constants/texts/app_texts.dart';
import 'package:flutter_techblog/gen/assets.gen.dart';
import 'package:get/get.dart';

Future<dynamic> changeArticleTitleDialog(ArticleManageController buildController) {
  return Get.defaultDialog(
      title: '',
      content: Column(
        children: [
          //title
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(Assets.images.techbot,width: 48),
              const SizedBox(width: 12),
              Text(AppString.editArticleTitleDialogContent,style: ApplicationTextStyle.normalTextStyle,)
            ],
          ),
          //text field
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: buildController.editArticleTitleTextController,
              decoration: const InputDecoration(
                hintText: AppString.editArticleTitleDialogContent,
                contentPadding: EdgeInsets.all(4.0),
              ),
            ),
          ),

          // Accept and cancel btn
          Row(
            children: [
              TextButton(
                  onPressed: () {
                    buildController.changeArticleTitle();
                    Get.back();
                  },
                  child: Text(AppString.confirmation,style: ApplicationTextStyle.acceptTextBtnTxtStyle)),
              TextButton(
                  onPressed: () => Get.back(),
                  child: Text(AppString.cancelTxt,style: ApplicationTextStyle.normalTextStyle)),
            ],
          )
        ],
      )
  );
}
