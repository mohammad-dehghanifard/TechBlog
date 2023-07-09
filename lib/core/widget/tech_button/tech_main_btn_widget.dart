import 'package:flutter/material.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';
import 'package:flutter_techblog/core/constants/style/text_styles.dart';

class TechButton extends StatelessWidget {
  const TechButton({
    super.key,
    required this.text,
    required this.onTap,
    this.btnColor = SolidColors.colorPrimary
  });

  final String text;
  final Color btnColor;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
            backgroundColor:  MaterialStatePropertyAll(btnColor),
            minimumSize: MaterialStatePropertyAll(Size(size.width * 0.4,size.height * 0.07)),
            shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
            )
        ),
        child:  Text(text,style: ApplicationTextStyle.registerScreenBtnTxtStyle,));
  }
}