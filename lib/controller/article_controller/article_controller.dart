import 'dart:developer';

import 'package:flutter_techblog/core/constants/api_url/api_urls.dart';
import 'package:flutter_techblog/core/services/web_service.dart';
import 'package:flutter_techblog/model/article_model/article_model.dart';
import 'package:flutter_techblog/model/tag_model/tag_model.dart';
import 'package:get/get.dart';

class ArticleController extends GetxController{
//================= variables ==================================================
  ArticleModel? article;
  String? articleId;
  bool isLoading = false;
  List<TagModel> tagList = [];
  List<ArticleModel> relatedArticles = [];
  List<ArticleModel> allArticles = [];

//================= functions ==================================================

  Future<dynamic> fetchSingleArticleData() async {
    tagList.clear();
    relatedArticles.clear();
    // اماده کردن پارامتر ها برای ارسال به سمت سرور
    Map<String,dynamic> params = {
      "command" : "info",
      "id" : articleId,
      "user_id" : null,
    };
    
    isLoading = true;
    update();
    final response = await TechWebService.getRequest(url: ApiUrls.singleArticleApi,params: params);
    if(response.statusCode == 200){
      article = ArticleModel.fromJson(response.data['info']);
      // دریافت لیست تگ ها از سرور
      for( var tag in response.data['tags']) {
        tagList.add(TagModel.fromJson(tag));
      }
      //دریافت لیست مقالات از سرور
      for( var article in response.data['related']) {
        relatedArticles.add(ArticleModel.fromJson(article));
      }
      articleId = '';
      isLoading = false;
      update();
    }
  }

  Future<dynamic> fetchAllArticleList() async {
    isLoading = true;
    update();

    Map<String,dynamic> params = {
      "command" : "new",
    };
    final  response = await TechWebService.getRequest(url: ApiUrls.getAllArticleApi,params: params);
    log(response.data.toString());
    if(response.statusCode == 200){
      for(var article in response.data){
        allArticles.add(ArticleModel.fromJson(article));
      }
      isLoading = false;
      update();
    }
  }


}