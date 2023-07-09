
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_techblog/controller/article_controller/article_manage_controller.dart';
import 'package:flutter_techblog/controller/home_controller/home_controller.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';
import 'package:flutter_techblog/core/constants/style/text_styles.dart';
import 'package:flutter_techblog/core/constants/texts/app_texts.dart';
import 'package:flutter_techblog/core/widget/tech_button/tech_main_btn_widget.dart';
import 'package:flutter_techblog/model/tag_model/tag_model.dart';
import 'package:get/get.dart';

Future<dynamic> selectCategoryBottomSheet(BuildContext context) {
  final Size size = MediaQuery.of(context).size;
  final HomeController controller = Get.find<HomeController>();
  return showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(
      topRight: Radius.circular(12),
      topLeft: Radius.circular(12),
    )),
    builder: (context) {
      return SingleChildScrollView(
        child: SizedBox(
          width: size.width,
          height: size.height / 2.5,
          child: Column(
            children: [
              GetBuilder<ArticleManageController>(builder: (buildController) => Expanded(
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 1.6,

                  ),
                  itemCount: controller.homeDataModel!.tags.length,
                  itemBuilder: (context, index) {
                    final tag = controller.homeDataModel!.tags[index];
                    return _SelectTagItem(
                      tag: tag,
                      selected: buildController.tagsList.contains(tag) ? true : false,
                      onTap: () => buildController.addArticleTag(tag),
                    );

                  },
                ),
              )),
              // btn
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TechButton(
                  text: AppString.continuation,
                  onTap: () => Get.back(),),
              )
            ],
          ),
        ),
      );
    },
  );
}

class _SelectTagItem extends StatelessWidget {
  const _SelectTagItem({
    required this.tag,
    required this.onTap,
    this.selected = false
  });

  final TagModel tag;
  final Function() onTap;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [

          Container(
            margin: const EdgeInsets.fromLTRB(4,16,4,4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: SolidColors.colorPrimary,
            ),
            child: Center(child: Text(tag.title,style: ApplicationTextStyle.normalTextStyle.apply(color: SolidColors.whiteColor),textAlign: TextAlign.center,)),
          ),

          if(selected)
            const Positioned(
                 top: 4,
                child: Icon(CupertinoIcons.check_mark,color: SolidColors.pinkColor)),
        ],
      ),
    );
  }
}
