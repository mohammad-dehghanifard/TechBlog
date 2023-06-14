import 'package:flutter/material.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';
import 'package:flutter_techblog/gen/assets.gen.dart';

class CustomAppBars {

  static AppBar mainAppBar(
      {required Size size,
      required Function menuTap,
      required Function searchTap}) {
    return AppBar(
      backgroundColor: SolidColors.scaffoldColor,
      elevation: 0,
      actions: [
        SizedBox(
          width: size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // menu btn
              IconButton(
                  onPressed: menuTap(),
                  iconSize: 32,
                  icon: const Icon(Icons.menu)),
              // logo
              Image.asset(Assets.images.logo.path, height: size.height / 13.6),
              //search btn
              IconButton(
                  onPressed: searchTap(),
                  iconSize: 32,
                  icon: const Icon(Icons.search)),
            ],
          ),
        )
      ],
    );
  }

  static AppBar singleArticleAppBar(){
    return AppBar(
      backgroundColor: SolidColors.scaffoldColor,
      elevation: 0,
      actions: [
        SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              Icon(Icons.chevron_left)
            ],
          ),
        )
      ],
    );
  }
}
