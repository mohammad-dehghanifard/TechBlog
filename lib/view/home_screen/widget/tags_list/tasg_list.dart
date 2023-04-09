import 'package:flutter/material.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';
import 'package:flutter_techblog/core/constants/style/text_styles.dart';

class HomeHashTagsList extends StatelessWidget {
  const HomeHashTagsList({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.06,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin:  EdgeInsets.fromLTRB(6, 0, index == 0? size.width * 0.07 : 6, 0),
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                gradient: const LinearGradient(
                    colors: GradiantColor.blackGradiant
                )
            ),
            child: Center(child: Text("# برنامه نویسی",style: ApplicationTextStyle.subtext1,)),
          );
        },
      ),
    );
  }
}
