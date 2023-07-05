import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';
import 'package:flutter_techblog/core/constants/style/text_styles.dart';
import 'package:flutter_techblog/core/constants/texts/app_texts.dart';

import '../../../core/widget/app_bar/article_app_bar_widget.dart';
import '../../../gen/assets.gen.dart';

class ManageArticleScreen extends StatelessWidget {
  const ManageArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: SolidColors.scaffoldColor,
      appBar: articleAppBar(size: size, title: AppString.manageArticle),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(Assets.images.techbot,width: 128),
          const SizedBox(height: 16),

          Text(
              AppString.manageEmptyArticleTxt,
              style: ApplicationTextStyle.normalTextStyle.copyWith(fontWeight: FontWeight.bold,fontSize: 18))
        ],
      ),
    );
  }
}
