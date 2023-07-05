import 'package:flutter/material.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';
import 'package:flutter_techblog/core/widget/tech_cached_image/tech_cached_image.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class WriteNewArticleScreen extends StatelessWidget {
  const WriteNewArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: size.width,
              height: size.height / 3,
              child: Stack(
                children: [
                  // article poster
                  const TechCachedImage(imageLink: ""),
                  // gradiant
                  Container(
                    width: size.width,
                    height: size.height / 13,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: GradiantColor.singlePageAppbarGradiant,
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter
                        )
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(
                        Icons.arrow_forward, color: Colors.white,))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}