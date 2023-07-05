import 'package:flutter/material.dart';

import '../../../core/constants/style/text_styles.dart';

class TitleBottom extends StatelessWidget {
  const TitleBottom({
    super.key,
    required this.size,
    required this.iconPath,
    required this.titleTxt,
    required this.onTap
  });

  final Size size;
  final String iconPath;
  final String titleTxt;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.only(right: 16),
      child: Row(
        children: [
          Image.asset(iconPath,height: size.height * 0.03),
          SizedBox(width: size.width * 0.02),
          TextButton(
            onPressed: onTap,
            child: Text( titleTxt ,style: ApplicationTextStyle.listTitle,),
          )
        ],
      ),
    );
  }
}