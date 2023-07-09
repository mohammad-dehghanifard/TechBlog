// ignore_for_file: unrelated_type_equality_checks
import 'dart:developer';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_techblog/core/constants/api_url/api_urls.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';
import 'package:flutter_techblog/core/constants/storage_keys/storage_keys.dart';
import 'package:flutter_techblog/core/constants/style/text_styles.dart';
import 'package:flutter_techblog/core/constants/texts/app_texts.dart';
import 'package:flutter_techblog/core/services/web_service.dart';
import 'package:flutter_techblog/core/widget/snack_bar/tech_snack_bar.dart';
import 'package:flutter_techblog/model/tag_model/tag_model.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:get_storage/get_storage.dart';
import 'package:html_editor_enhanced/html_editor.dart';
import '../../core/constants/post_request_keys/send_new_article_keys.dart';

class ArticleManageController extends GetxController{
  bool isLoading = false;
  String articleImagePath = 'noting';
  String articleDefaultTitle = AppString.manageArticleTitle;
  String articleDefaultContent = AppString.manageArticleContent;
  TextEditingController editArticleTitleTextController = TextEditingController();
  HtmlEditorController editingArticleControllerText = HtmlEditorController();
  List<TagModel> tagsList = [];
  final box = GetStorage();

  // انتخاب تصویر
  Future<void> picker({required FileType fileType}) async {
  FilePickerResult? result = await FilePicker.platform.pickFiles(type: fileType);

  if(result != null){
    articleImagePath = result.files.single.path!;
    update();
    techSnackBar(
        title: AppString.successTitleTxt,
        content: AppString.selectImageSuccessMsg,
        status: SnackStatus.success
    );
  }else{
    techSnackBar(
      title: AppString.errorTitleTxt,
      content: AppString.selectImageErrorMsg,
      status: SnackStatus.error
    );
  }
  }


  //ویرایش عنوان مقاله
  void changeArticleTitle(){
    if(editArticleTitleTextController.text != ''){
      articleDefaultTitle = editArticleTitleTextController.text;
      editArticleTitleTextController.clear();
      update();
      Get.back();
      techSnackBar(
          title: AppString.successTitleTxt,
          content: AppString.setArticleTitleSuccessMsg,
          status: SnackStatus.error
      );
    }else{
      Get.back();
      techSnackBar(
          title: AppString.errorTitleTxt,
          content: AppString.setArticleTitleErrorMsg,
          status: SnackStatus.error
      );
    }
  }
  // ویرایش متن مقاله
  void changeArticleContent(String newContent){
      articleDefaultContent = newContent;
      update();
  }
  // اضافه کردن تگ به مقاله
  void addArticleTag(TagModel newTag){
    if(!tagsList.contains(newTag)){
      tagsList.add(newTag);
      update();
    }
  }
  // ارسال مقاله به سرور
  Future<void> sendArticle() async {
    if(
    articleImagePath != 'noting' &&
    articleDefaultTitle != AppString.manageArticleTitle &&
    articleDefaultContent != AppString.manageArticleContent &&
    tagsList.isNotEmpty
    ){
      isLoading = true;
      update();
      Map<String, dynamic> map = {
        SendNewArticleKey.titleKey : articleDefaultTitle,
        SendNewArticleKey.contentKey : articleDefaultContent,
        SendNewArticleKey.catIdKey : '6',
        SendNewArticleKey.tagListKey : '[]',
        SendNewArticleKey.imageKey :  await dio.MultipartFile.fromFile(articleImagePath),
        SendNewArticleKey.userIdKey : box.read(TechStorageKeys.userIdKey),
        SendNewArticleKey.commandKey : 'store',
      };
      final response = await TechWebService.postRequest(url: ApiUrls.sendNewArticleApi, data: map);
      log(response.toString());
      isLoading = false;
      Get.back;
      update();
    }else{
      techSnackBar(
          title: AppString.errorTitleTxt,
          content: AppString.completedArticleInformationErrorMsg,
          status: SnackStatus.error
      );
    }
  }

  // حذف تگ انتخاب شده
  void deleteSelectTag(TagModel tag){
    if(tagsList.contains(tag)){
      removeTagDialog(tag);
    }
  }

  Future<dynamic> removeTagDialog(TagModel tag) {
    return Get.defaultDialog(
      title: "آیا مطئمن هستید؟!",
      titleStyle: ApplicationTextStyle.txtDialogTitleTxtStyle,
      content: Column(
        children: [
          Text('آیا مطئن هستید قصد حذف این دسته بندی را دارید؟',style: ApplicationTextStyle.normalTextStyle),
          Row(
            children: [
              TextButton(
                  onPressed: () {
                    tagsList.remove(tag);
                    Get.back();
                    update();
                    techSnackBar(
                        title: AppString.successTitleTxt,
                        content: AppString.removeTagSuccessMsg,
                        status: SnackStatus.error
                    );
                  },
                  child: Text("بله، حذفش کن",style: ApplicationTextStyle.acceptTextBtnTxtStyle.copyWith(fontSize: 14,color: SolidColors.redColor))),
              TextButton(
                  onPressed: () => Get.back(),
                  child: Text("نه، پشیمون شدم",style: ApplicationTextStyle.acceptTextBtnTxtStyle.copyWith(fontSize: 14))),
            ],
          )
        ],
      )
    );
  }
}