import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter_techblog/core/constants/api_url/api_urls.dart';
import 'package:flutter_techblog/core/constants/routes/screen_routes.dart';
import 'package:flutter_techblog/core/constants/storage_keys/storage_keys.dart';
import 'package:flutter_techblog/core/services/web_service.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class RegisterController extends GetxController{
//================= variables ==================================================
  bool isLoading = false;
  final box = GetStorage();
  final TextEditingController inputUserEmailController = TextEditingController();
  final TextEditingController inputUserVerifyCodeController = TextEditingController();
  String? userId;
  String? userEmail;

//================= functions ==================================================

Future<dynamic> sendOtpEmail() async {
  isLoading = true;
  update();

  final map = {
    'email' : inputUserEmailController.text,
    'command' : 'register'
  };

  final  response = await TechWebService.postRequest(url: ApiUrls.registerApi, data: map);
  if(response.statusCode == 200){
    log(response.data['user_id'].toString());
    userEmail = inputUserEmailController.text;
    userId = response.data['user_id'];
  }
  isLoading = false;
  update();
  log(response.data.toString());
}

Future<dynamic> verifyCode() async {
  isLoading = true;
  update();

  final map = {
    'email' : userEmail,
    'user_id' : userId,
    'code' : inputUserVerifyCodeController.text,
    'command' : 'verify'
  };

  final response = await TechWebService.postRequest(url: ApiUrls.registerApi, data: map);
  if(response.statusCode == 200){
    log(response.data.toString());
    box.write(TechStorageKeys.userEmailKey, userEmail);
    box.write(TechStorageKeys.userIdKey, userId);
    box.write(TechStorageKeys.tokenKey, response.data['token']);
    Get.offAndToNamed(ScreenRouts.mainScreenRoute);
  }
  isLoading = false;
  update();
}


}




