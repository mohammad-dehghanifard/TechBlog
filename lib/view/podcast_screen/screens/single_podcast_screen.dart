import 'package:flutter/material.dart';
import 'package:flutter_techblog/core/constants/style/text_styles.dart';
import 'package:flutter_techblog/gen/assets.gen.dart';
import 'package:flutter_techblog/view/podcast_screen/widgets/podcast_controller_widget.dart';
import 'package:get/get.dart';
import '../../../core/constants/colors/app_colors.dart';
import '../../../core/widget/tech_cached_image/tech_cached_image.dart';
import '../widgets/podcast_episode_item.dart';

class SinglePodcastScreen extends StatelessWidget {
  const SinglePodcastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                    TechCachedImage(imageLink: ''),
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
                padding:  const EdgeInsets.all(12),
                child: Text(
                  "رادیو گیگ جادی میر میرانی",
                  maxLines: 2,
                  style: ApplicationTextStyle.singlePageTitleTextStyle,
                ),
              ),

              // publisher information
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    Image.asset(Assets.images.profileavatar.path,height: size.height * 0.06),
                    SizedBox(width: size.width * 0.04),
                    Text("جادی میر میرانی",style: ApplicationTextStyle.normalTextStyle),
                  ],
                ),
              ),

              // podcast episode list
              SizedBox(
                height: size.height / 3,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        width: size.width,
                        height: size.height * 0.05,
                        margin: const EdgeInsets.all(12),
                        child: const PodcastEpisodeItem(),
                      );
                    },
                ),
              ),
              // podcast controller
              const PodcastControllerWidget()
            ],
          ),
        )
      ),
    );
  }
}



