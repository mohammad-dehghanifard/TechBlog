import 'package:flutter/material.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';
import 'package:flutter_techblog/core/widget/app_bar/article_app_bar_widget.dart';

class ArticleListScreen extends StatelessWidget {
  const ArticleListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bodyMargin = size.width * 0.07;
    return Scaffold(
      appBar: articleAppBar(title: "لیست مقاله ها", size: size),
      backgroundColor: SolidColors.scaffoldColor,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
                itemBuilder: (context, index) {
                  // return ArticleListItem(
                  //   article: article,
                  //   size: size,
                  //   bodyMargin: bodyMargin,
                  //   index: index,
                  //   onTap: () {}
                  // );
                },
            ),
          ),
        ],
      )
    );
  }

}

