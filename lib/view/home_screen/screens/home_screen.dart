import 'package:flutter/material.dart';
import 'package:flutter_techblog/controller/home_controller/home_controller.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';
import 'package:flutter_techblog/core/constants/routes/screen_routes.dart';
import 'package:flutter_techblog/core/constants/style/text_styles.dart';
import 'package:flutter_techblog/core/widget/loading_widget/loading_widget.dart';
import 'package:flutter_techblog/core/widget/tech_cached_image/tech_cached_image.dart';
import 'package:flutter_techblog/gen/assets.gen.dart';
import 'package:flutter_techblog/view/home_screen/widgets/list_item/home_article_item.dart';
import 'package:flutter_techblog/view/home_screen/widgets/list_item/home_podcast_item.dart';
import 'package:flutter_techblog/view/home_screen/widgets/list_title/list_title.dart';
import 'package:flutter_techblog/view/home_screen/widgets/tags_item/tag_item.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bodyMargin = size.width * 0.07;
    return Scaffold(
      backgroundColor: SolidColors.scaffoldColor,
      body: GetBuilder<HomeController>(
        builder: (buildController) {
          //  در صورتی که لودینگ باشه صفحه لودینگ نمایش داده میشه
          if(buildController.isLoading){
            return const ApplicationLoading();
          }else{
            return SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  children: [
                    SizedBox(height: size.height * 0.02),

                    // main poster
                    Stack(
                      children: [
                        // poster
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(ScreenRouts.singleArticleScreenRoute,arguments: buildController.homeDataModel!.poster.id);
                          },
                          child: Container(
                            width: size.width / 1.19,
                            height: size.height / 4.2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            foregroundDecoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                gradient: const LinearGradient(
                                    colors: GradiantColor.mainPosterGradiant,
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter
                                )
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                                child: TechCachedImage(imageLink: buildController.homeDataModel!.poster.image)),
                          ),
                        ),
                        // texts
                        Positioned(
                          bottom: 10,
                          left: 10,
                          right: 10,
                          child: Text(
                              buildController.homeDataModel!.poster.title,
                              style: ApplicationTextStyle.subtext1.copyWith(fontWeight: FontWeight.w700,fontSize: 18),
                              maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: size.height * 0.03),

                    // tags list
                    SizedBox(
                      height: size.height * 0.05,
                      child: ListView.builder(
                        itemCount: buildController.homeDataModel!.tags.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final tag = buildController.homeDataModel!.tags[index];
                          return TagItem(
                            tag: tag,
                            size: size,
                            index: index,
                            gradient: const LinearGradient(colors: GradiantColor.blackGradiant), textColor: SolidColors.colorLightText,);
                        },
                      ),
                    ),
                    SizedBox(height: size.height * 0.03),

                    // show the hottest article title
                    ListTitle(
                      bodyMargin: bodyMargin,
                      size: size,
                      iconPath: Assets.icons.writeicon.path,
                      titleTxt: "مشاهده داغترین نوشته ها",
                      onTap: () => Get.toNamed(ScreenRouts.articleListScreenRoute),
                    ),
                    SizedBox(height: size.height * 0.01),

                    // the hottest article list
                    SizedBox(
                      height: size.height / 4,
                      child: ListView.builder(
                        itemCount: buildController.homeDataModel!.topVisited.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final article = buildController.homeDataModel!.topVisited[index];
                          return ArticleListItem(
                            article: article,
                            size: size,
                            bodyMargin: bodyMargin,
                            index: index,
                            onTap: () => Get.toNamed(ScreenRouts.singleArticleScreenRoute,arguments: article.id),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: size.height * 0.03),

                    // show the hottest podcast title
                    ListTitle(
                      bodyMargin: bodyMargin,
                      size: size,
                      iconPath: Assets.icons.podcasticon.path,
                      titleTxt: "مشاهده داغترین پادکست ها",
                      onTap: () {},
                    ),
                    SizedBox(height: size.height * 0.01),
                    // the hottest podcast list
                    SizedBox(
                      height: size.height / 4,
                      child: ListView.builder(
                        itemCount: buildController.homeDataModel!.topPodcasts.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final podcast  = buildController.homeDataModel!.topPodcasts[index];
                          return HomePodcastItem(
                            podcast: podcast,
                            size: size,
                            bodyMargin: bodyMargin,
                            index: index,
                            onTap: () {},);
                        },
                      ),
                    ),

                    SizedBox(height: size.height * 0.12),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}






