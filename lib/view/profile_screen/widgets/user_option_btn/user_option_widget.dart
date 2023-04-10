import 'package:flutter/material.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';
import 'package:flutter_techblog/core/constants/style/text_styles.dart';

class UserProfileOptionBtn extends StatelessWidget {
  final String text;
  const UserProfileOptionBtn({
    super.key,
    required this.size,
    required this.text,
    required this.onTap
  });

  final Size size;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        splashColor: SolidColors.colorPrimary,
        onTap: () {},
        child: SizedBox(
            width: size.width,
            height: size.height * 0.04,
            child: Center(child: Text(text,style: ApplicationTextStyle.userProfileOption))));
  }
}