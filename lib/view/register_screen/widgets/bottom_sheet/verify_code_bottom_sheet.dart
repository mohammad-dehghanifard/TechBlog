import 'package:flutter/material.dart';
import 'package:flutter_techblog/controller/register_controller/register_controller.dart';
import 'package:flutter_techblog/core/constants/style/text_styles.dart';
import 'package:flutter_techblog/core/constants/texts/app_texts.dart';
import 'package:flutter_techblog/core/widget/loading_widget/loading_widget.dart';
import 'package:flutter_techblog/core/widget/tech_button/tech_main_btn_widget.dart';
import 'package:get/get.dart';

Future<dynamic> verifyCodeBottomSheet({ required BuildContext context, required Size size}) {
  final RegisterController registerController = Get.find<RegisterController>();
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              )
          ),
          child:  Padding(
            padding:  EdgeInsets.fromLTRB(16,0,16,MediaQuery.of(context).viewInsets.bottom),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(AppString.inputActiveCode,style: ApplicationTextStyle.registerScreenTxtStyle,textAlign: TextAlign.center),
                  SizedBox(height: size.height * 0.03),
                  TextField(
                    controller: registerController.inputUserVerifyCodeController,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintStyle: ApplicationTextStyle.hintTxtTxtStyle,
                        hintText: '******'
                    ),
                  ),
                  SizedBox(height: size.height * 0.06),
                  GetBuilder<RegisterController>(
                    builder: (builderController) {
                      if(builderController.isLoading){
                        return const ApplicationLoading();
                      }else{
                        return TechButton(
                            text: "ادامه",
                            onTap: () => builderController.verifyCode()
                        );
                      }
                    },
                    ),

                ],
              ),
            ),
          )
      );
    },);
}