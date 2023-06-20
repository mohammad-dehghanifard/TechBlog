import 'dart:developer';

import 'package:flutter_techblog/core/constants/api_url/api_urls.dart';
import 'package:flutter_techblog/core/services/web_service.dart';
import 'package:flutter_techblog/model/article_model/article_model.dart';
import 'package:get/get.dart';

class SingleArticleController extends GetxController{
//================= variables ==================================================
  ArticleModel? article;
  bool isLoading = false;

//================= functions ==================================================

  Future<dynamic> fetchHomeData() async {

    Map<String,dynamic> params = {
      "command" : "info",
      "id" : article!.id,
      "user_id" : null,
    };
    
    isLoading = true;
    update();
    final response = await TechWebService.getRequest(url: ApiUrls.singleArticleApi,params: params);
    if(response.statusCode == 200){
      log(response.data.toString());
      article = ArticleModel.fromJson(response.data['info']);
      isLoading = false;
      update();
    }
  }
}