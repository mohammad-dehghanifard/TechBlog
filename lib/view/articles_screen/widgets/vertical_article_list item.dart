import 'package:flutter/material.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';
import 'package:flutter_techblog/core/constants/style/text_styles.dart';
import 'package:flutter_techblog/core/widget/tech_cached_image/tech_cached_image.dart';
import 'package:flutter_techblog/model/article_model/article_model.dart';

class VerticalArticleListItem extends StatelessWidget {
  const VerticalArticleListItem({
    super.key,
    required this.size,
    required this.onTap,
    required this.article,
  });

  final Size size;
  final Function() onTap;
  final ArticleModel? article;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          // poster
          Container(
            margin: const EdgeInsets.all(8),
            width: size.width / 4,
            height: size.height / 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: TechCachedImage(imageLink: article!.image)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // article title
              SizedBox(
                  width : size.width /1.5,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      article!.title,
                      style: ApplicationTextStyle.subtext1.apply(color: SolidColors.colorTextTitle),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )),

              Row(
                children: [
                  Text(article!.author,style: ApplicationTextStyle.hintTxtTxtStyle.copyWith(fontSize: 12)),
                  SizedBox(width: size.width * 0.04),
                  Text("${article!.view} بازدید ",style: ApplicationTextStyle.subtext1.copyWith(fontSize: 12,color: SolidColors.colorSubText),),
                  SizedBox(width: size.width * 0.10),
                  Text(article!.catName,style: ApplicationTextStyle.listTitle.copyWith(fontSize: 16)),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}