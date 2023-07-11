import 'package:flutter/material.dart';
import 'package:flutter_techblog/controller/podcast_controller/podcast_controller.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';
import 'package:flutter_techblog/core/constants/style/text_styles.dart';
import 'package:flutter_techblog/gen/assets.gen.dart';
import 'package:flutter_techblog/model/podcast_model/podcast_file_model.dart';
import 'package:get/get.dart';

class PodcastEpisodeItem extends StatelessWidget {
  const PodcastEpisodeItem({
    super.key, required this.file,
  });
  final PodcastFileModel file;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GetBuilder<PodcastController>(builder: (buildController) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(Assets.icons.podcasticon.path,scale: 2),
          const SizedBox(width: 12),
          SizedBox(
              width: size.width / 1.5,
              child: InkWell(
                onTap: () => buildController.changeSelectPodcast(buildController.player.currentIndex!),
                child: Text(
                    file.title!,maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: ApplicationTextStyle.normalTextStyle.copyWith(
                        color: buildController.currentPodcast == buildController.player.currentIndex! ? SolidColors.redColor: SolidColors.blackColor
                    ),
                ),
              )),
          const Expanded(child: SizedBox()),
          Text("00 : ${file.length!}",style: ApplicationTextStyle.podcastDecorationTxtStyle)

        ],
      );
    },);
  }
}
