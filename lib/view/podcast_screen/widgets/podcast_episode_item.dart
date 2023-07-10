import 'package:flutter/material.dart';
import 'package:flutter_techblog/core/constants/style/text_styles.dart';
import 'package:flutter_techblog/gen/assets.gen.dart';

class PodcastEpisodeItem extends StatelessWidget {
  const PodcastEpisodeItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(Assets.icons.podcasticon.path,scale: 2),
        const SizedBox(width: 12),
        Text("عنوان اپیزوید",style: ApplicationTextStyle.normalTextStyle),
        const Expanded(child: SizedBox()),
        Text("22:00",style: ApplicationTextStyle.podcastDecorationTxtStyle)

      ],
    );
  }
}
