import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';
import 'package:flutter_techblog/core/constants/routes/screen_routes.dart';
import 'package:flutter_techblog/core/constants/style/text_styles.dart';
import 'package:flutter_techblog/core/constants/texts/app_texts.dart';
import 'package:flutter_techblog/core/widget/tech_button/tech_main_btn_widget.dart';
import 'package:get/get.dart';

import '../../../core/widget/app_bar/article_app_bar_widget.dart';
import '../../../gen/assets.gen.dart';

class ManageArticleScreen extends StatelessWidget {
  const ManageArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: SolidColors.scaffoldColor,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TechButton(
          onTap: () {Get.toNamed(ScreenRouts.writeNewArticleScreenRoute);},
          text: AppString.writeNewArticle,
        ),
      ) ,
      appBar: articleAppBar(size: size, title: AppString.manageArticle),
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.images.techbot,width: 128),
            const SizedBox(height: 16),

            Text(
                AppString.manageEmptyArticleTxt,
                textAlign: TextAlign.center,
                style: ApplicationTextStyle.normalTextStyle.copyWith(fontWeight: FontWeight.bold,fontSize: 18))
          ],
        ),
      ),
    );
  }
}
