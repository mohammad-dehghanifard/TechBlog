import 'package:flutter/material.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';
import 'package:flutter_techblog/core/constants/style/text_styles.dart';
import 'package:flutter_techblog/core/widget/tech_cached_image/tech_cached_image.dart';
import 'package:flutter_techblog/model/podcast_model/podcast_model.dart';

class HomePodcastItem extends StatelessWidget {
  const HomePodcastItem({super.key, required this.size, required this.bodyMargin, required this.index, required this.onTap, required this.podcast});



  final Size size;
  final double bodyMargin;
  final int index;
  final Function() onTap;
  final PodcastModel podcast;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          // poster
          Stack(
            children: [
              //poster
              Container(
                margin: EdgeInsets.fromLTRB(6, 0, index == 0? size.width * 0.07 : 0, 0),
                width: size.width / 2.6,
                height: size.height / 5.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                ),
                foregroundDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: const LinearGradient(
                        colors: GradiantColor.blogPostGradiant,
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter
                    )
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                    child: TechCachedImage(imageLink: podcast.poster)),
              ),
              // texts
              Positioned(
                bottom: 10,
                left: 15,
                right: index == 0? bodyMargin + 8 : 15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${podcast.view} Likes",style: ApplicationTextStyle.subtext1.apply(fontSizeFactor: 0.8)),
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
                  podcast.title,
                  style: ApplicationTextStyle.subtext1.apply(color: SolidColors.colorTextTitle),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ))
        ],
      ),
    );
  }
}