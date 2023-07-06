import 'dart:developer';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_techblog/core/constants/texts/app_texts.dart';
import 'package:get/get.dart';

class ArticleManageController extends GetxController{
  String articleImagePath = 'noting';
  String articleDefaultTitle = AppString.manageArticleTitle;
  TextEditingController editArticleTitleTextController = TextEditingController();

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

  void changeArticleTitle(){
    if(editArticleTitleTextController.text.isNotEmpty){
      articleDefaultTitle = editArticleTitleTextController.text;
      update();
    }else{
      log("عنوانی وارد نشده");
    }
  }
}