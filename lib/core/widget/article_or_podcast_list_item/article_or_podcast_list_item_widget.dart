import 'package:flutter/material.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';
import 'package:flutter_techblog/core/constants/style/text_styles.dart';
import 'package:flutter_techblog/gen/assets.gen.dart';

class ArticleOrPodcastListItem extends StatelessWidget {
  const ArticleOrPodcastListItem({
    super.key,
    required this.size, required this.title, required this.writer, required this.category, required this.onTap,
  });

  final Size size;
  final String title;
  final String writer;
  final String category;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // poster and title
          Row(
            children: [
              // poster
              Container(
                margin: const EdgeInsets.fromLTRB(16, 12, 16, 10),
                width: size.width / 4.17,
                height: size.height / 7.73,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    // post image
                    image: DecorationImage(
                        image: Image.asset(Assets.images.singleimg.path).image,
                        fit: BoxFit.cover
                    )
                ) ,
              ),
              //title and information
              Column(
                children: [
                  // title
                  SizedBox(
                      width : size.width / 1.5,
                      child: Text(
                        title,
                        style: ApplicationTextStyle.normalTextStyle,
                      )),
                  // information
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // writer name txt
                      RichText(
                        text: TextSpan(
                            text: writer,style: ApplicationTextStyle.normalTextStyle.apply(color: SolidColors.welcomeTxtColor),
                            children: [
                              TextSpan(
                                text: '   بازدید 253',style: ApplicationTextStyle.normalTextStyle.apply(color: SolidColors.welcomeTxtColor),)
                            ]
                        ),
                      ),
                      SizedBox(width: size.width * 0.1),
                      // cateGory
                      Text(category,style: ApplicationTextStyle.normalTextStyle.apply(color: SolidColors.seeMoreColor),)
                    ],
                  )
                ],
              ),
            ],
          ),

        ],
      ),
    );
  }
}

