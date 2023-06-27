import 'package:flutter/material.dart';
import 'package:flutter_techblog/core/constants/style/text_styles.dart';

class TechIconTextButton extends StatelessWidget {
  const TechIconTextButton({
    super.key, required this.iconPath, required this.title, required this.onTap,
  });
  final String iconPath;
  final String title;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Image.asset(iconPath,width: 32),
          const SizedBox(width: 12),
          Text(title,style:ApplicationTextStyle.normalTextStyle)
        ],
      ),
    );
  }
}
