import 'package:flutter/material.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';
import 'package:flutter_techblog/core/constants/style/text_styles.dart';
import 'package:flutter_techblog/core/constants/texts/app_texts.dart';
import 'package:flutter_techblog/gen/assets.gen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: SolidColors.scaffoldColor,
      body: SafeArea(
        child: Column(
          children:  [
            SizedBox(height: size.height * 0.06),
            // user avatar
            Image.asset(Assets.images.profileavatar.path,height: size.height * 0.2),
            // change avatar
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.icons.writeicon.path,height: size.height * 0.03),
                SizedBox(width: size.width * 0.02),
                TextButton(
                    onPressed: () {},
                    child: Text(AppString.editProfile,style: ApplicationTextStyle.listTitle,))
              ],
            ),
            SizedBox(height: size.height * 0.04),
            //user information
            Text("فاطمه امیری",style: ApplicationTextStyle.listTitle.apply(color: SolidColors.colorPrimary)),
            Text("fatemeamiri@gmail.com",style: ApplicationTextStyle.listTitle.apply(color: SolidColors.colorTextTitle)),

            // user option
            const TechDivider(thickness: 0.1),
            UserProfileOptionBtn(size: size,text: "مقالات مورد علاقه من", onTap: () {},),
            const TechDivider(thickness: 0.7),
            UserProfileOptionBtn(size: size,text: "پادکست های مورد علاقه من", onTap: () {},),
            const TechDivider(thickness: 0.1),
            UserProfileOptionBtn(size: size,text: "خروج از حساب کاربری", onTap: () {},),
            const TechDivider(thickness: 0.5)
          ],
        ),
      ),
    );
  }
}

class UserProfileOptionBtn extends StatelessWidget {
  final String text;
  const UserProfileOptionBtn({
    super.key,
    required this.size,
    required this.text,
    required this.onTap
  });

  final Size size;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        splashColor: SolidColors.colorPrimary,
        onTap: () {},
        child: SizedBox(
          width: size.width,
            height: size.height * 0.04,
            child: Center(child: Text(text,style: ApplicationTextStyle.userProfileOption))));
  }
}

class TechDivider extends StatelessWidget {
  final double thickness;
  const TechDivider({
    required this.thickness,
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return  Padding(
      padding: const EdgeInsets.fromLTRB(32,0,32,8),
      child: Divider(color: SolidColors.techDividerColor,thickness: thickness),
    );
  }
}
