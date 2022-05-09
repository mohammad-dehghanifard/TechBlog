import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:techblog/gen/assets.gen.dart';
import 'package:techblog/my_colors.dart';
import 'package:techblog/splash_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: SolidColors.statusBarColor,
      statusBarIconBrightness: Brightness.dark));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(localizationsDelegates: const [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ], supportedLocales: const [
      Locale('fa', '')
    ],
        // text themes
        theme: ThemeData(
          fontFamily: "dana",
          textTheme: const TextTheme(

            subtitle1: TextStyle(
              fontSize: 14,
              fontFamily: "dana",
              fontWeight: FontWeight.w300,
              color: SolidColors.colorPosterText,
            ),

            subtitle2: TextStyle(
              fontSize: 14,
              fontFamily: "dana",
              fontWeight: FontWeight.w300,
              color: SolidColors.colorPosterSubText,
            ),

            bodyText1: TextStyle(
              fontSize: 16,
              fontFamily: "dana",
              fontWeight: FontWeight.w500,
              color: SolidColors.colorTextTitle,
            ),

            headline1: TextStyle(
              fontSize: 18,
              fontFamily: "dana",
              fontWeight: FontWeight.bold,
              color: SolidColors.colorPosterText,
            ),

            headline2: TextStyle(
              fontSize: 14,
              fontFamily: "dana",
              fontWeight: FontWeight.w500,
              color: SolidColors.colorLightText,
            ),

            headline3: TextStyle(
              fontSize: 14,
              fontFamily: "dana",
              fontWeight: FontWeight.bold,
              color: SolidColors.seeMoreColor,
            ),

          )

        ),
        debugShowCheckedModeBanner: false,
        home: const SplashScreen());
  }
}
