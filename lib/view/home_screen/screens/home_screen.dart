import 'package:flutter/material.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';
import 'package:flutter_techblog/core/constants/style/text_styles.dart';
import 'package:flutter_techblog/gen/assets.gen.dart';
import 'package:flutter_techblog/view/home_screen/widgets/list/home_article_or_podcast_list.dart';
import 'package:flutter_techblog/view/home_screen/widgets/list_title/list_title.dart';
import 'package:flutter_techblog/view/home_screen/widgets/tags_list/tasg_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bodyMargin = size.width * 0.07;
    return Scaffold(
      backgroundColor: SolidColors.scaffoldColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: size.height * 0.02),

              // main poster
              Stack(
                children: [
                  // poster
                  Container(
                    width: size.width / 1.19,
                    height: size.height / 4.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      image: DecorationImage(
                        image: Image.asset(Assets.images.poster.path).image,
                        fit: BoxFit.fill
                      )
                    ),
                    foregroundDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      gradient: const LinearGradient(
                        colors: GradiantColor.mainPosterGradiant,
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter
                      )
                    ),
                  ),
                  // texts
                  Positioned(
                    bottom: 10,
                    left: 10,
                    right: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("ملیکا عزیزی - یک روز پیش",style: ApplicationTextStyle.subtext1),
                            Text("253 Likes",style: ApplicationTextStyle.subtext1),
                          ],),
                        SizedBox(height: size.height * 0.01),
                        Text("دوازده قدم برنامه نویسی یک دوره ی....",style: ApplicationTextStyle.subtext1.copyWith(fontWeight: FontWeight.w700,fontSize: 18)),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: size.height * 0.03),

              // tags list
              HomeHashTagsList(size: size),
              SizedBox(height: size.height * 0.03),

              // show the hottest article title
              ListTitle(
                  bodyMargin: bodyMargin,
                  size: size,
                   iconPath: Assets.icons.writeicon.path,
                    titleTxt: "مشاهده داغترین نوشته ها",
              ),
              SizedBox(height: size.height * 0.02),

              // the hottest article list
              HomeArticleOrPodcastList(size: size, bodyMargin: bodyMargin),
              SizedBox(height: size.height * 0.03),

              // show the hottest podcast title
              ListTitle(
                bodyMargin: bodyMargin,
                size: size,
                iconPath: Assets.icons.podcasticon.path,
                titleTxt: "مشاهده داغترین پادکست ها",
              ),
              SizedBox(height: size.height * 0.02),
              // the hottest podcast list
              HomeArticleOrPodcastList(size: size, bodyMargin: bodyMargin),

              SizedBox(height: size.height * 0.12),
            ],
          ),
        ),
      ),
    );
  }
}




