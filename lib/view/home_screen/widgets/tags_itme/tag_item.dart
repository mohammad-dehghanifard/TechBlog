import 'package:flutter/material.dart';
import 'package:flutter_techblog/core/constants/style/text_styles.dart';

class TagItem extends StatelessWidget {
  const TagItem({
    super.key,
    required this.size, required this.index, this.gradient, this.color, required this.textColor,
  });

  final Size size;
  final int index;
  final Gradient? gradient;
  final Color? color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.fromLTRB(6, 0, index == 0? size.width * 0.07 : 6, 0),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: color,
          borderRadius: BorderRadius.circular(64),
          gradient: gradient
      ),
      child: Center(child: Text("# برنامه نویسی",style: ApplicationTextStyle.subtext1.apply(color: textColor),)),
    );
  }
}