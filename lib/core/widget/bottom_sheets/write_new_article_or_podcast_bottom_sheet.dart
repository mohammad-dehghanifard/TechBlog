import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_techblog/core/constants/style/text_styles.dart';
import 'package:flutter_techblog/core/constants/texts/app_texts.dart';
import 'package:flutter_techblog/core/widget/tech_button/tech_icon_text_button.dart';
import 'package:flutter_techblog/gen/assets.gen.dart';

Future<dynamic> writeNewArticleOrPodcastBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return Container(
        width: double.infinity,
        height: 300,
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            )
        ),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(Assets.images.techbot,width: 64),
                const SizedBox(width: 16,),
                Text(AppString.writeBottomSheetTitle,style: ApplicationTextStyle.writeNewArticleButtonSheetTextStyle)
              ],

            ),
            const SizedBox(height: 24),
            Text(AppString.writeBottomSheetDescription,style: ApplicationTextStyle.normalTextStyle),
            const SizedBox(height: 24),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TechIconTextButton(
                  onTap: () {},
                  title: AppString.articlesManagement,
                  iconPath: Assets.icons.articleicon.path,
                ),

                TechIconTextButton(
                  onTap: () {},
                  title: AppString.podcastManagement,
                  iconPath: Assets.icons.witepodcasticon.path,
                )
              ],
            )
          ],
        ),
      );

    },);
}
