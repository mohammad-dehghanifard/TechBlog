import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_techblog/core/constants/api_url/api_urls.dart';
import 'package:flutter_techblog/core/services/web_service.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController{
//================= variables ==================================================
  bool isLoading = false;
  final TextEditingController inputUserEmailController = TextEditingController();
  String? userId;

//================= functions ==================================================

Future<dynamic> sendOtpEmail() async {
  isLoading = true;
  update();

  final map = {
    'email' : inputUserEmailController.text,
    'command' : 'register'
  };

  final  response = await TechWebService.postRequest(url: ApiUrls.otpSendEmailApi, data: map);
  if(response.statusCode == 200){
    log(response.data['user_id'].toString());
    userId = response.data['user_id'];
  }
  isLoading = false;
  update();
  log(response.data.toString());
}


}




