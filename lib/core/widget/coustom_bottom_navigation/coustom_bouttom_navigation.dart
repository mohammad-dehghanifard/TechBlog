import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';
import 'package:flutter_techblog/core/constants/storage_keys/storage_keys.dart';
import 'package:flutter_techblog/core/constants/style/text_styles.dart';
import 'package:flutter_techblog/core/constants/texts/app_texts.dart';
import 'package:flutter_techblog/core/widget/tech_button/tech_icon_text_button.dart';
import 'package:flutter_techblog/gen/assets.gen.dart';
import 'package:get_storage/get_storage.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({
    super.key,
    required this.size,
    required this.changeScreen
  });

  final Size size;
  final Function(int value) changeScreen;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // gradiant
        Positioned(
          bottom: 0,
          child: Container(
            width: size.width,
            height: size.height / 10,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: GradiantColor.bottomNavBg,
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                )
            ),
          ),
        ),
        // bottom navigation
        Positioned(
          bottom: 20,
          left: 40,
          right: 40,
          child: Container(
            width: size.width / 1.3,
            height: size.height / 12.3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: const LinearGradient(
                    colors: GradiantColor.purpleGradiant
                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // home icon
                IconButton(
                    onPressed: () => changeScreen(0),
                    icon: Image.asset(Assets.icons.homeicon.path)),
                // write icon
                IconButton(
                    onPressed: () {
                      final box = GetStorage();
                      if(box.read(TechStorageKeys.tokenKey) == null){
                        changeScreen(2);
                      }else{
                        showModalBottomSheet(
                          context: context,
                          backgroundColor: Colors.transparent,
                          builder: (context) {
                            return Container(
                              width: double.infinity,
                                height: 300,
                                padding: const EdgeInsets.all(16),
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(16),
                                      topRight: Radius.circular(16),
                                    )
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                       SvgPicture.asset(Assets.images.techbot,width: 64),
                                        const SizedBox(width: 16,),
                                        Text(AppString.writeBottomSheetTitle,style: ApplicationTextStyle.writeNewArticleButtonSheetTextStyle)
                                      ],

                                    ),
                                    const SizedBox(height: 24),
                                    Text(AppString.writeBottomSheetDescription,style: ApplicationTextStyle.normalTextStyle),
                                    const SizedBox(height: 24),

                                    TechIconTextButton(
                                      onTap: () {},
                                      title: AppString.articlesManagement,
                                      iconPath: Assets.icons.articleicon.path,
                                    )
                                  ],
                                ),
                            );

                          },);
                      }

                    },
                    icon: Image.asset(Assets.icons.write.path)),
                // user icon
                IconButton(
                    onPressed: () => changeScreen(1),
                    icon: Image.asset(Assets.icons.user.path)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

