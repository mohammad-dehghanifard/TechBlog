import 'package:flutter/material.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';
import 'package:flutter_techblog/core/constants/style/text_styles.dart';
import 'package:flutter_techblog/gen/assets.gen.dart';
import 'package:flutter_techblog/view/home_screen/widget/coustom_app_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: SolidColors.scaffoldColor,
      body: SafeArea(
        child: Column(
          children: [
            // custom app bar
            CustomHomeAppBar(
                size: size,
                menuTap: () {},
                searchTap: () {},
            ),
            SizedBox(height: size.height * 0.02),

            // main poster
            Stack(
              children: [
                // poster
                Container(
                  width: size.width / 1.19,
                  height: size.height / 4.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    image: DecorationImage(
                      image: Image.asset(Assets.images.poster.path).image,
                      fit: BoxFit.fill
                    )
                  ),
                  foregroundDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    gradient: const LinearGradient(
                      colors: GradiantColor.mainPosterGradiant,
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter
                    )
                  ),
                ),
                // texts
                Positioned(
                  bottom: 10,
                  left: 10,
                  right: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("253 Likes",style: ApplicationTextStyle.subtext1),
                          Text("ملیکا عزیزی - یک روز پیش",style: ApplicationTextStyle.subtext1),
                        ],),
                      SizedBox(height: size.height * 0.01),
                      Text(".....دوازده قدم برنامه نویسی یک دوره ی",style: ApplicationTextStyle.subtext1.copyWith(fontWeight: FontWeight.w700,fontSize: 18)),
                    ],
                  ),
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
