import 'package:flutter/material.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';
import 'package:flutter_techblog/core/constants/style/text_styles.dart';

class RegisterBtn extends StatelessWidget {
  const RegisterBtn({
    super.key,
    required this.size,
    required this.text,
    required this.onTap
  });

  final Size size;
  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
            backgroundColor: const MaterialStatePropertyAll(SolidColors.colorPrimary),
            minimumSize: MaterialStatePropertyAll(Size(size.width * 0.4,size.height * 0.07)),
            shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
            )
        ),
        child:  Text(text,style: ApplicationTextStyle.registerScreenBtnTxtStyle,));
  }
}