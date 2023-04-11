import 'package:flutter/material.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';
import 'package:flutter_techblog/core/widget/app_bar/article_app_bar_widget.dart';
import 'package:flutter_techblog/core/widget/article_or_podcast_list_item/article_or_podcast_list_item_widget.dart';

class ArticleListScreen extends StatelessWidget {
  const ArticleListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: articleAppBar(title: "لیست مقاله ها", size: size),
      backgroundColor: SolidColors.scaffoldColor,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
                itemBuilder: (context, index) {
                  return ArticleOrPodcastListItem(
                      size: size,
                      onTap: () {},
                       title: 'رازهای اساسینز کرید والهالا؛ از هری پاتر و ارباب حلقه‌ها تا دارک سولز',
                       category: 'بازی رایانه ای',
                        writer: 'ملیکا عزیزی',
                  );
                },
            ),
          ),
        ],
      )
    );
  }

}

