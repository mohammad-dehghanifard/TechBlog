import 'package:flutter/material.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';

class ApplicationTextStyle{
  static String defaultFontFamily = 'dana';
  static TextStyle subtext1 = TextStyle(fontFamily: defaultFontFamily,fontSize: 16,color: SolidColors.colorLightText,fontWeight: FontWeight.w500);
  static TextStyle listTitle = TextStyle(fontFamily: defaultFontFamily,fontSize: 16,color: SolidColors.colorTitle,fontWeight: FontWeight.w200);
  static TextStyle userProfileOption = TextStyle(fontFamily: defaultFontFamily,fontSize: 14,color: SolidColors.colorTextTitle,fontWeight: FontWeight.w200);
  static TextStyle registerScreenTxtStyle = TextStyle(fontFamily: defaultFontFamily,fontSize: 14,color: SolidColors.welcomeTxtColor,fontWeight: FontWeight.w500);
  static TextStyle registerScreenBtnTxtStyle = TextStyle(fontFamily: defaultFontFamily,fontSize: 16,color: Colors.white,fontWeight: FontWeight.w700);
  static TextStyle hintTxtTxtStyle = TextStyle(fontFamily: defaultFontFamily,fontSize: 16,color: SolidColors.welcomeTxtColor,fontWeight: FontWeight.w500);
  static TextStyle normalTextStyle = TextStyle(fontFamily: defaultFontFamily,fontSize: 14,color: SolidColors.colorTextTitle,fontWeight: FontWeight.w200);
  static TextStyle writeNewArticleButtonSheetTextStyle = TextStyle(fontFamily: defaultFontFamily,fontSize: 16,color: SolidColors.colorSubText,fontWeight: FontWeight.w700);
  static TextStyle singlePageTitleTextStyle = TextStyle(fontFamily: defaultFontFamily,fontSize: 16,color: SolidColors.colorTextTitle,fontWeight: FontWeight.w700);
  static TextStyle acceptTextBtnTxtStyle = TextStyle(fontFamily: defaultFontFamily,fontSize: 16,color: SolidColors.darkPurple,fontWeight: FontWeight.w700);
  static TextStyle txtDialogTitleTxtStyle = TextStyle(fontFamily: defaultFontFamily,fontSize: 16,color: SolidColors.darkPurple,fontWeight: FontWeight.w700);
  static TextStyle podcastDecorationTxtStyle = TextStyle(fontFamily: defaultFontFamily,fontSize: 16,color: SolidColors.blackColor,fontWeight: FontWeight.w700);

}