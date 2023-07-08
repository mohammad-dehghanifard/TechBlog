// ignore_for_file: unrelated_type_equality_checks

import 'dart:developer';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_techblog/core/constants/texts/app_texts.dart';
import 'package:flutter_techblog/model/tag_model/tag_model.dart';
import 'package:get/get.dart';
import 'package:html_editor_enhanced/html_editor.dart';

class ArticleManageController extends GetxController{
  String articleImagePath = 'noting';
  String articleDefaultTitle = AppString.manageArticleTitle;
  String articleDefaultContent = AppString.manageArticleContent;
  TextEditingController editArticleTitleTextController = TextEditingController();
  HtmlEditorController editingArticleControllerText = HtmlEditorController();
  List<TagModel> tagsList = [];

  // انتخاب تصویر
  Future<void> picker({required FileType fileType}) async {
  FilePickerResult? result = await FilePicker.platform.pickFiles(type: fileType);

  if(result != null){
    articleImagePath = result.files.single.path!;
    update();
  }else{
    log("هیچ عکسی انتخاب نشده!!");
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
}