import 'package:flutter/material.dart';
import 'package:flutter_techblog/core/constants/style/text_styles.dart';

class ListTitle extends StatelessWidget {
  const ListTitle({
    super.key,
    required this.bodyMargin,
    required this.size,
    required this.iconPath,
    required this.titleTxt
  });

  final double bodyMargin;
  final Size size;
  final String iconPath;
  final String titleTxt;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right: bodyMargin),
      child: Row(
        children: [
          Image.asset(iconPath,height: size.height * 0.03),
          SizedBox(width: size.width * 0.04),
          Text(titleTxt,style: ApplicationTextStyle.listTitle,)
        ],
      ),
    );
  }
}
