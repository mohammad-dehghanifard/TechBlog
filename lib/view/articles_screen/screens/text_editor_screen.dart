
import 'package:flutter/material.dart';
import 'package:flutter_techblog/controller/article_controller/article_manage_controller.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';
import 'package:flutter_techblog/core/constants/texts/app_texts.dart';
import 'package:flutter_techblog/core/widget/app_bar/article_app_bar_widget.dart';
import 'package:flutter_techblog/core/widget/tech_button/tech_main_btn_widget.dart';
import 'package:get/get.dart';
import 'package:html_editor_enhanced/html_editor.dart';

class TechTextEditor extends StatelessWidget {
  const TechTextEditor({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ArticleManageController manageController = Get.find<ArticleManageController>();
    return Scaffold(
      backgroundColor: SolidColors.scaffoldColor,
      appBar: articleAppBar(title: AppString.articlesManagement, size: size),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: size.height * 0.04),
            HtmlEditor(
                controller: manageController.editingArticleControllerText,
                htmlEditorOptions: const HtmlEditorOptions(
                  shouldEnsureVisible: true,
                  inputType: HtmlInputType.text

                ),
                callbacks: Callbacks(
                  onChangeContent: (newString) {
                   manageController.changeArticleContent(newString!);

                  },
                ),
            ),
            SizedBox(height: size.height * 0.04),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TechButton(
                  size: size,
                  text: AppString.confirmation,
                  onTap: () {
                   Get.back();
                  },),
                TechButton(
                  size: size,
                  text: AppString.cancelTxt,
                  btnColor: SolidColors.grayBtnColor,
                  onTap: () => Get.back())
              ],
            )
          ],
        ),
      ),
    );
  }
}
