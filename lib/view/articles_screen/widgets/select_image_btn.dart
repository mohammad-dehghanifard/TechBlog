import 'package:flutter/material.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';
import 'package:flutter_techblog/core/constants/style/text_styles.dart';
import 'package:flutter_techblog/core/constants/texts/app_texts.dart';

class SelectImageBtn extends StatelessWidget {
  const SelectImageBtn({
    super.key,
    required this.size, required this.onTap,
  });

  final Size size;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size.width * 0.12,
        height:  size.height * 0.04,
        decoration: const BoxDecoration(
            color: SolidColors.darkPurple,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16)
            )
        ),
        child: Center(child: Text(AppString.selectImageTxt,style: ApplicationTextStyle.normalTextStyle.apply(color: Colors.white))),
      ),
    );
  }
}