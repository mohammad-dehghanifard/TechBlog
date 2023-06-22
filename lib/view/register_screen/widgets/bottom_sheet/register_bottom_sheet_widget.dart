import 'package:flutter/material.dart';
import 'package:flutter_techblog/core/constants/style/text_styles.dart';
import 'package:flutter_techblog/core/constants/texts/app_texts.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../btn/register_btn_widget.dart';
import 'verify_code_bottom_sheet.dart';

Future<dynamic> registerBottomSheet({ required BuildContext context, required Size size}) {

  return showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              )
          ),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(AppString.inputEmail,style: ApplicationTextStyle.registerScreenTxtStyle,textAlign: TextAlign.center),
              SizedBox(height: size.height * 0.03),
              TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintStyle: ApplicationTextStyle.hintTxtTxtStyle,
                    hintText: 'techblog@gmail.com'
                ),
              ),
              SizedBox(height: size.height * 0.06),
              // active user
              RegisterBtn(size: size, text: "ادامه", onTap: () {
                Get.back();
                verifyCodeBottomSheet(context: context,size: size);
              }
              )
            ],
          )
      );
    },);
}

