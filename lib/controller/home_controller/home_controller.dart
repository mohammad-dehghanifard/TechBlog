import 'package:flutter_techblog/core/services/web_service.dart';
import 'package:flutter_techblog/model/home_model/home_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{

//================= variables ==================================================
 TechBlogHomeDataModel? homeDataModel;
 bool isLoading = false;

//================= functions ==================================================

  Future<dynamic> fetchHomeData() async {
    isLoading = true;
    update();
    final response = await TechWebService.getRequest(url: '');
  }

}