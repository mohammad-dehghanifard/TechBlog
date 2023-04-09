import 'package:flutter/material.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';
import 'package:flutter_techblog/core/constants/style/text_styles.dart';
import 'package:flutter_techblog/gen/assets.gen.dart';

class HomeArticleOrPodcastList extends StatelessWidget {
  const HomeArticleOrPodcastList({
    super.key,
    required this.size,
    required this.bodyMargin,
  });

  final Size size;
  final double bodyMargin;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 4,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              // poster
              Stack(
                children: [
                  //poster
                  Container(
                    margin: EdgeInsets.fromLTRB(6, 0, index == 0? size.width * 0.07 : 6, 0),
                    width: size.width / 2.6,
                    height: size.height / 5.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                            image: Image.asset(Assets.images.singleimg.path).image,
                            fit: BoxFit.cover
                        )
                    ),
                    foregroundDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        gradient: const LinearGradient(
                            colors: GradiantColor.blogPostGradiant,
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter
                        )
                    ),
                  ),
                  // texts
                  Positioned(
                    bottom: 10,
                    left: 15,
                    right: index == 0? bodyMargin + 8 : 15,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("ملیکا عزیزی",style: ApplicationTextStyle.subtext1.apply(fontSizeFactor: 0.8)),
                            Text("253 Likes",style: ApplicationTextStyle.subtext1.apply(fontSizeFactor: 0.8)),
                          ],),
                      ],
                    ),
                  )
                ],
              ),
              // article title
              SizedBox(
                  width : 200,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(6, 0, index == 0? size.width * 0.08 : 26, 0),
                    child: Text(
                      "سالیدیتی چیست؛ معرفی زبان معروف برنامه‌نویسی",
                      style: ApplicationTextStyle.subtext1.apply(color: SolidColors.colorTextTitle),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ))
            ],
          );
        },
      ),
    );
  }
}
