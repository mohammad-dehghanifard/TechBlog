import 'package:flutter/material.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';
import 'package:flutter_techblog/core/constants/routes/screen_routes.dart';
import 'package:flutter_techblog/core/widget/loading_widget/loading_widget.dart';
import 'package:flutter_techblog/gen/assets.gen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Get.offAndToNamed(ScreenRouts.homeRoute);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Scaffold(
      backgroundColor: SolidColors.scaffoldColor,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(Assets.images.logo.path,height: 68),
            SizedBox(height: size.height * 0.02),
            const ApplicationLoading()
          ],
        ),
      ),
    );
  }
}