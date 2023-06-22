import 'package:flutter/material.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';
import 'package:flutter_techblog/core/constants/storage_keys/storage_keys.dart';
import 'package:flutter_techblog/core/constants/style/text_styles.dart';
import 'package:flutter_techblog/core/constants/texts/app_texts.dart';
import 'package:flutter_techblog/core/widget/tech_divider/tech_divider.dart';
import 'package:flutter_techblog/gen/assets.gen.dart';
import 'package:flutter_techblog/view/profile_screen/widgets/user_option_btn/user_option_widget.dart';
import 'package:get_storage/get_storage.dart';

class ProfileScreen extends StatelessWidget {
  final box = GetStorage();
   ProfileScreen({Key? key}) : super(key: key);

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
            Text("محمد دهقانی فرد",style: ApplicationTextStyle.listTitle.apply(color: SolidColors.colorPrimary)),
            Text(box.read(TechStorageKeys.userEmailKey),style: ApplicationTextStyle.listTitle.apply(color: SolidColors.colorTextTitle)),

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




