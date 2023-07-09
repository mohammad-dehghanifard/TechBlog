// ignore_for_file: unrelated_type_equality_checks
import 'dart:developer';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_techblog/core/constants/api_url/api_urls.dart';
import 'package:flutter_techblog/core/constants/storage_keys/storage_keys.dart';
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
  }else{
    techSnackBar();
  }
  }


  //ویرایش عنوان مقاله
  void changeArticleTitle(){
    if(editArticleTitleTextController.text.isNotEmpty){
      articleDefaultTitle = editArticleTitleTextController.text;
      update();
    }else{
      log("عنوانی وارد نشده");
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
    }else{
      log("این تگ قبلا انتخاب شده است");
    }
  }
  // ارسال مقاله به سرور
  Future<void> sendArticle() async {
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
  }
  // حذف تگ انتخاب شده
  void deleteSelectTag(TagModel tag){
    if(tagsList.contains(tag)){
      tagsList.remove(tag);
      update();
    }
  }
}