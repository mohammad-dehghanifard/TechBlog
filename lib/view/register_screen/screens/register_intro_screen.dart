import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';
import 'package:flutter_techblog/core/constants/style/text_styles.dart';
import 'package:flutter_techblog/core/constants/texts/app_texts.dart';
import 'package:flutter_techblog/gen/assets.gen.dart';
import 'package:flutter_techblog/view/register_screen/widgets/bottom_sheet/register_bottom_sheet_widget.dart';
import 'package:flutter_techblog/view/register_screen/widgets/btn/register_btn_widget.dart';
import 'package:get/get.dart';

class RegisterIntro extends StatelessWidget {
  const RegisterIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: SolidColors.scaffoldColor,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            SvgPicture.asset(Assets.images.techbot,height: 128),
            SizedBox(height: size.height * 0.02),
            Text(AppString.welcomeTxt,style: ApplicationTextStyle.registerScreenTxtStyle,textAlign: TextAlign.center),
            SizedBox(height: size.height * 0.06),
            RegisterBtn(
                size: size,
                text: AppString.singUp,
                onTap: () {
                  // input email
                  registerBottomSheet(
                      context: context,
                      size: size,
                      child: Column(
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
                           registerBottomSheet(
                               context: context,
                               size: size,
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Text(AppString.inputActiveCode,style: ApplicationTextStyle.registerScreenTxtStyle,textAlign: TextAlign.center),
                                   SizedBox(height: size.height * 0.03),
                                   TextField(
                                     textAlign: TextAlign.center,
                                     keyboardType: TextInputType.number,
                                     decoration: InputDecoration(
                                         hintStyle: ApplicationTextStyle.hintTxtTxtStyle,
                                         hintText: '******'
                                     ),
                                   ),
                                   SizedBox(height: size.height * 0.06),
                                   RegisterBtn(size: size, text: "ادامه", onTap: () => Get.back()
                                   )
                                 ],
                               ) );
                          }
                          )
                        ],
                      ) );
                }
            )
          ],
        ),
      ),
    );
  }

}


