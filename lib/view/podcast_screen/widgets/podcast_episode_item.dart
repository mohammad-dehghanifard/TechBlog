import 'package:flutter/material.dart';
import 'package:flutter_techblog/core/constants/style/text_styles.dart';
import 'package:flutter_techblog/gen/assets.gen.dart';
import 'package:flutter_techblog/model/podcast_model/podcast_file_model.dart';

class PodcastEpisodeItem extends StatelessWidget {
  const PodcastEpisodeItem({
    super.key, required this.file,
  });
  final PodcastFileModel file;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(Assets.icons.podcasticon.path,scale: 2),
        const SizedBox(width: 12),
        SizedBox(
          width: size.width / 1.5,
            child: Text(file.title!,maxLines: 2,overflow: TextOverflow.ellipsis,style: ApplicationTextStyle.normalTextStyle)),
        const Expanded(child: SizedBox()),
        Text("00 : ${file.length!}",style: ApplicationTextStyle.podcastDecorationTxtStyle)

      ],
    );
  }
}
