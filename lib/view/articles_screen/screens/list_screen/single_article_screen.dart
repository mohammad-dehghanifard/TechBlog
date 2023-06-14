import 'package:flutter/material.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';
import 'package:flutter_techblog/core/constants/style/text_styles.dart';
import 'package:flutter_techblog/core/constants/texts/app_texts.dart';
import 'package:flutter_techblog/gen/assets.gen.dart';
import 'package:flutter_techblog/view/home_screen/widgets/tags_itme/tag_item.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SingleArticleScreen extends StatelessWidget {
  const SingleArticleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bodyMargin = size.width * 0.02;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // main poster
             SizedBox(
               width: size.width,
               height: size.height / 3,
               child:  Stack(
                 children: [
                   // article poster
                   Image.asset(Assets.images.singleimg.path),
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

                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       // book mark and share icon
                       IconButton(
                           onPressed: () {},
                           icon: const Icon(Icons.share,color: Colors.white,)),
                       IconButton(
                           onPressed: () {},
                           icon: const Icon(Icons.bookmark_border,color: Colors.white,)),

                       const Expanded(child: SizedBox()),
                       // back icon
                       IconButton(
                           onPressed: () {Get.back();},
                           icon: const Icon(Icons.arrow_forward,color: Colors.white,)),

                     ],
                   )
                 ],
               ),
             ),

              // article title
              Padding(
                padding:  EdgeInsets.all(bodyMargin),
                child: Text(
                    'رازهای اساسینز کرید والهالا؛ از هری پاتر و ارباب حلقه‌ها تا دارک سولز',
                    maxLines: 2,
                  style: ApplicationTextStyle.singlePageTitleTextStyle,
                ),
              ),

              // writer information
              Padding(
                padding: EdgeInsets.all(bodyMargin),
                child: Row(
                  children: [
                    Image.asset(Assets.images.profileavatar.path,height: size.height * 0.06),
                    SizedBox(width: size.width * 0.04),
                    Text("فاطمه امیری",style: ApplicationTextStyle.normalTextStyle),
                    SizedBox(width: size.width * 0.24),
                    Text("2 روز پیش",style: ApplicationTextStyle.hintTxtTxtStyle.copyWith(fontSize: 12))
                  ],
                ),
              ),

              //article content
              Padding(
                padding: EdgeInsets.all(bodyMargin),
                child: Text(AppString.manageArticleContent,style: ApplicationTextStyle.normalTextStyle,textAlign: TextAlign.justify),
              ),

              //tag list
              SizedBox(
                height: size.height * 0.05,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return TagItem(size: size,index: index,gradient: const LinearGradient(colors: GradiantColor.blackGradiant),);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
