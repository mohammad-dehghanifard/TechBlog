import 'package:flutter/material.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';

class PodcastControllerWidget extends StatelessWidget {
  const PodcastControllerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
        margin: const EdgeInsets.all(12),
        padding: const EdgeInsets.all(12),
        width: size.width,
        height: size.height * 0.13,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: GradiantColor.purpleGradiant
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            // Indicator
            const LinearProgressIndicator(
              color: SolidColors.orangeColor,
              value: 0.5,
              backgroundColor: SolidColors.whiteColor,
            ),
            SizedBox(height: size.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    iconSize: 28,
                    icon: const Icon(Icons.skip_next,color: SolidColors.whiteColor)),
                SizedBox(width: size.width * 0.04),
                IconButton(
                    iconSize: 48,
                    onPressed: () {},
                    icon: const Icon(Icons.play_circle,color: SolidColors.whiteColor)),
                SizedBox(width: size.width * 0.04),
                IconButton(
                    onPressed: () {},
                    iconSize: 28,
                    icon: const Icon(Icons.skip_previous,color: SolidColors.whiteColor)),
                const Expanded(child: SizedBox()),
                IconButton(
                    iconSize: 32,
                    onPressed: () {},
                    icon: const Icon(Icons.repeat,color: SolidColors.whiteColor)),
              ],
            )
          ],
        )
    );
  }
}