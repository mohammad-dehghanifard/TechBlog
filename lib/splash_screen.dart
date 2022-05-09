import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techblog/gen/assets.gen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:techblog/main_screen.dart';
import 'package:techblog/my_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

 @override
 void initState() {
   //navigate to mainScreen
    Future.delayed(const Duration(seconds: 5)).then((value){
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainScreen()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Image(image: Assets.images.logo, height: 64),
              const SizedBox(height: 32),
              //loading anim
              const SpinKitFadingCube(
                color: SolidColors.colorPrimary,
                size: 32.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
