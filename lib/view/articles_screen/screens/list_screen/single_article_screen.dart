import 'package:flutter/material.dart';
import 'package:flutter_techblog/controller/article_controller/article_controller.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';
import 'package:flutter_techblog/core/constants/routes/screen_routes.dart';
import 'package:flutter_techblog/core/constants/style/text_styles.dart';
import 'package:flutter_techblog/core/widget/loading_widget/loading_widget.dart';
import 'package:flutter_techblog/core/widget/tech_cached_image/tech_cached_image.dart';
import 'package:flutter_techblog/gen/assets.gen.dart';
import 'package:flutter_techblog/view/home_screen/widgets/list_item/home_article_item.dart';
import 'package:flutter_techblog/view/home_screen/widgets/list_title/list_title.dart';
import 'package:flutter_techblog/view/home_screen/widgets/tags_item/tag_item.dart';
import 'package:get/get.dart';

class SingleArticleScreen extends StatefulWidget {
  const SingleArticleScreen({Key? key}) : super(key: key);

  @override
  State<SingleArticleScreen> createState() => _SingleArticleScreenState();
}

class _SingleArticleScreenState extends State<SingleArticleScreen> {
  final ArticleController articleController = Get.find<ArticleController>();
  @override
  void initState() {
    articleController.articleId = Get.arguments;
    articleController.fetchSingleArticleData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bodyMargin = size.width * 0.02;
    return Scaffold(
      body: SafeArea(
        child: GetBuilder<ArticleController>(
          builder: (buildController) {
           if(buildController.isLoading){
             return const ApplicationLoading();
           }else{
             return SingleChildScrollView(
               physics: const BouncingScrollPhysics(),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   // main poster
                   SizedBox(
                     width: size.width,
                     height: size.height / 3,
                     child:  Stack(
                       children: [
                         // article poster
                         TechCachedImage(imageLink: buildController.article!.image),
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

                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             // book mark and share icon
                             IconButton(
                                 onPressed: () {},
                                 icon: const Icon(Icons.share,color: Colors.white,)),
                             IconButton(
                                 onPressed: () {},
                                 icon: const Icon(Icons.bookmark_border,color: Colors.white,)),

                             const Expanded(child: SizedBox()),
                             // back icon
                             IconButton(
                                 onPressed: () {Get.back();},
                                 icon: const Icon(Icons.arrow_forward,color: Colors.white,)),

                           ],
                         )
                       ],
                     ),
                   ),

                   // article title
                   Padding(
                     padding:  EdgeInsets.all(bodyMargin),
                     child: Text(
                       buildController.article!.title,
                       maxLines: 2,
                       style: ApplicationTextStyle.singlePageTitleTextStyle,
                     ),
                   ),

                   // writer information
                   Padding(
                     padding: EdgeInsets.all(bodyMargin),
                     child: Row(
                       children: [
                         Image.asset(Assets.images.profileavatar.path,height: size.height * 0.06),
                         SizedBox(width: size.width * 0.04),
                         Text(buildController.article!.author,style: ApplicationTextStyle.normalTextStyle),
                         SizedBox(width: size.width * 0.24),
                         Text("بازدید ${buildController.article!.view}",style: ApplicationTextStyle.hintTxtTxtStyle.copyWith(fontSize: 12))
                       ],
                     ),
                   ),

                   //article content
                   Padding(
                     padding: EdgeInsets.all(bodyMargin),
                     child: Text(buildController.article!.content,style: ApplicationTextStyle.normalTextStyle,textAlign: TextAlign.justify),
                   ),
                   SizedBox(height: size.height * 0.04),
                   //tag list
                   SizedBox(
                     height: size.height * 0.05,
                     child: ListView.builder(
                       itemCount: buildController.tagList.length,
                       scrollDirection: Axis.horizontal,
                       itemBuilder: (context, index) {
                         final tag = buildController.tagList[index];
                         return TagItem(size: size,
                           index: index,
                           color: SolidColors.lightBgTagColor,
                           textColor: SolidColors.colorTextTitle,
                           tag: tag,);
                       },
                     ),
                   ),
                   SizedBox(height: size.height * 0.04),

                   // related article
                   ListTitle(
                     bodyMargin: bodyMargin,
                     size: size,
                     iconPath: Assets.icons.writeicon.path,
                     titleTxt: "مقالات مرتبط",
                     onTap: () {},
                   ),
                   SizedBox(height: size.height * 0.01),
                   // related article list
                   SizedBox(
                     height: size.height / 4,
                     child: ListView.builder(
                       itemCount: buildController.relatedArticles.length,
                       scrollDirection: Axis.horizontal,
                       itemBuilder: (context, index) {
                         final article = buildController.relatedArticles[index];
                         return ArticleListItem(
                           article: article,
                           size: size,
                           bodyMargin: bodyMargin,
                           index: index,
                           onTap: () {
                             Get.toNamed(ScreenRouts.singleArticleScreenRoute,arguments: article.id);
                           },);
                       },
                     ),
                   ),
                 ],
               ),
             );
           }
          }),
      ),
    );
  }
}
