import 'package:flutter/material.dart';
import 'package:flutter_techblog/controller/article_controller/article_controller.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';
import 'package:flutter_techblog/core/widget/app_bar/article_app_bar_widget.dart';
import 'package:flutter_techblog/core/widget/loading_widget/loading_widget.dart';
import 'package:flutter_techblog/model/article_model/article_model.dart';
import 'package:flutter_techblog/view/home_screen/widgets/list_item/home_article_item.dart';
import 'package:get/get.dart';

class ArticleListScreen extends StatefulWidget {
  const ArticleListScreen({Key? key}) : super(key: key);

  @override
  State<ArticleListScreen> createState() => _ArticleListScreenState();
}

class _ArticleListScreenState extends State<ArticleListScreen> {
  final ArticleController articleController = Get.find<ArticleController>();

  @override
  void initState() {
    super.initState();
    // api call
    articleController.fetchAllArticleList();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bodyMargin = size.width * 0.07;
    return Scaffold(
      appBar: articleAppBar(title: "لیست مقاله ها", size: size),
      backgroundColor: SolidColors.scaffoldColor,
      body: GetBuilder<ArticleController>(
        builder: (buildController) {
          if(buildController.isLoading){
            return const ApplicationLoading();
          }else{
           return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: buildController.allArticles.length,
                    itemBuilder: (context, index) {
                      final ArticleModel article = buildController.allArticles[index];
                      return ArticleListItem(
                          article: article,
                          size: size,
                          bodyMargin: bodyMargin,
                          index: index,
                          onTap: () {}
                      );
                    },
                  ),
                ),
              ],
            );
          }
        }
      )
    );
  }
}

