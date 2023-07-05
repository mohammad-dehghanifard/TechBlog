import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';
import 'package:flutter_techblog/core/constants/routes/screen_routes.dart';
import 'package:flutter_techblog/core/controller_binding/app_controller_binding.dart';
import 'package:flutter_techblog/view/articles_screen/screens/article_list_screen.dart';
import 'package:flutter_techblog/view/articles_screen/screens/manage_atricle.dart';
import 'package:flutter_techblog/view/articles_screen/screens/single_article_screen.dart';
import 'package:flutter_techblog/view/home_screen/screens/home_screen.dart';
import 'package:flutter_techblog/view/main_screen/screens/main_screen.dart';
import 'package:flutter_techblog/view/profile_screen/screens/profile_screen.dart';
import 'package:flutter_techblog/view/register_screen/screens/register_intro_screen.dart';
import 'package:flutter_techblog/view/splash_screen/screen/splash_screen.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  const SystemUiOverlayStyle(
    statusBarColor: SolidColors.scaffoldColor,
  );
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ControllerBinding(),
      locale: const Locale('fa'),
      initialRoute: ScreenRouts.splashRoute,
      getPages: [
        GetPage(name: ScreenRouts.splashRoute, page: () => const SplashScreen()),
        GetPage(name: ScreenRouts.homeRoute, page: () => const HomeScreen()),
        GetPage(name: ScreenRouts.mainScreenRoute, page: () =>  MainScreen()),
        GetPage(name: ScreenRouts.profileScreenRoute, page: () =>  ProfileScreen()),
        GetPage(name: ScreenRouts.registerIntroScreenRoute, page: () => const RegisterIntro()),
        GetPage(name: ScreenRouts.articleListScreenRoute, page: () => const ArticleListScreen()),
        GetPage(name: ScreenRouts.singleArticleScreenRoute, page: () => const SingleArticleScreen()),
        GetPage(name: ScreenRouts.manageArticleScreenRoute, page: () => const ManageArticleScreen()),
      ],
      title: 'TechBlog',
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1,color: SolidColors.borderColor),
            borderRadius: BorderRadius.circular(16)
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1,color: SolidColors.borderColor),
              borderRadius: BorderRadius.circular(16)
          ),
        ),
        primarySwatch: Colors.blue,
      ),
    );
  }
}

