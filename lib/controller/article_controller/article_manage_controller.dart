import 'dart:developer';

import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';

class ArticleManageController extends GetxController{
  String articleImagePath = 'noting';

  Future<void> picker({required FileType fileType}) async {
  FilePickerResult? result = await FilePicker.platform.pickFiles(type: fileType);

  if(result != null){
    articleImagePath = result.files.single.path!;
    update();
  }else{
    log("هیچ عکسی انتخاب نشده!!");
  }
  }
}