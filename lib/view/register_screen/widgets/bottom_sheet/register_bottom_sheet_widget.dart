import 'package:flutter/material.dart';
import 'package:flutter_techblog/controller/register_controller/register_controller.dart';
import 'package:flutter_techblog/core/constants/style/text_styles.dart';
import 'package:flutter_techblog/core/constants/texts/app_texts.dart';
import 'package:flutter_techblog/core/widget/loading_widget/loading_widget.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../core/widget/tech_button/tech_main_btn_widget.dart';
import 'verify_code_bottom_sheet.dart';

Future<dynamic> registerBottomSheet({ required BuildContext context, required Size size}) {
  final RegisterController registerController = Get.find<RegisterController>();
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return Container(
          padding:  const EdgeInsets.symmetric(vertical: 16),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              )
          ),
          child:  Padding(
            padding:  EdgeInsets.fromLTRB(16,0,16, MediaQuery.viewInsetsOf(context).bottom),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(AppString.inputEmail,style: ApplicationTextStyle.registerScreenTxtStyle,textAlign: TextAlign.center),
                  SizedBox(height: size.height * 0.03),
                  TextField(
                    controller: registerController.inputUserEmailController,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        hintStyle: ApplicationTextStyle.hintTxtTxtStyle,
                        hintText: 'techblog@gmail.com'
                    ),
                  ),
                  SizedBox(height: size.height * 0.06),
                  // active user
                  GetBuilder<RegisterController>(
                    builder: (builderController) {
                      if(builderController.isLoading){
                        return const ApplicationLoading();
                      }else{
                        return TechButton(
                            size: size,
                            text: "ادامه",
                            onTap: () async {
                              if(builderController.inputUserEmailController.text.isNotEmpty){
                               await builderController.sendOtpEmail();
                               Get.back();
                               verifyCodeBottomSheet(context: context,size: size);
                              }
                            }
                        );
                      }
                    }
                  )
                ],
              ),
            ),
          )
      );
    },);
}

