import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_techblog/controller/article_controller/article_manage_controller.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';
import 'package:flutter_techblog/core/constants/style/text_styles.dart';
import 'package:flutter_techblog/core/constants/texts/app_texts.dart';
import 'package:flutter_techblog/gen/assets.gen.dart';
import 'package:flutter_techblog/view/articles_screen/widgets/change_article_title_dialog.dart';
import 'package:flutter_techblog/view/articles_screen/widgets/title_btn.dart';
import 'package:get/get.dart';
import '../widgets/select_image_btn.dart';

class WriteNewArticleScreen extends StatelessWidget {
  const WriteNewArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: size.width,
            height: size.height,
            child: GetBuilder<ArticleManageController>(
              builder: (buildController) {
                return Column(
                  children: [
                    // main poster
                    Stack(
                      children: [
                        // article poster
                        buildController.articleImagePath == 'noting' ?
                        Image.asset(Assets.images.singleimg.path) :
                        Image.file(File(buildController.articleImagePath)),
                        // gradiant
                        Container(
                          width: size.width,
                          height: size.height / 13,
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  colors: GradiantColor.singlePageAppbarGradiant,
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter
                              )
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: const Icon(
                              Icons.arrow_forward, color: Colors.white,)),
                        // add image btn
                        Positioned(
                          left: 128,
                          right: 128,
                          bottom: 0,
                          child: SelectImageBtn(size: size,onTap: () {buildController.picker(fileType: FileType.image);}),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),

                    // edit article title
                    TitleBottom(
                        size: size,
                        iconPath: Assets.icons.writeicon.path,
                        titleTxt: AppString.setTitleArticleMangeTxt,
                        onTap: () {
                          changeArticleTitleDialog(buildController);
                        }
                    ),
                    const SizedBox(height: 8),
                    // article title
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Text(buildController.articleDefaultTitle,style: ApplicationTextStyle.normalTextStyle,textAlign: TextAlign.right),
                        )),


                    // edit article content
                    TitleBottom(
                        size: size,
                        iconPath: Assets.icons.writeicon.path,
                        titleTxt: AppString.editTextArticle,
                        onTap: () {}
                    ),
                    const SizedBox(height: 8),

                    // article content
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text(AppString.manageArticleContent,style: ApplicationTextStyle.normalTextStyle,textAlign: TextAlign.justify),
                    )

                  ],
                );
              },
            )
          ),
        ),
      ),
    );
  }

}
