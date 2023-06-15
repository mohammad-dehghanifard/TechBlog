import 'package:flutter_techblog/core/constants/api_url/api_urls.dart';

class ArticleModel {
  final String id;
  final String title;
  final String image;
  final String catId;
  final String catName;
  final String author;
  final String view;
  final String status;
  final String createdAt;

  ArticleModel({
    required this.id,
    required this.title,
    required this.image,
    required this.catId,
    required this.catName,
    required this.author,
    required this.view,
    required this.status,
    required this.createdAt,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      id: json['id'],
      title: json['title'],
      image: ApiUrls.baseWebSiteUrl + json['image'],
      catId: json['cat_id'],
      catName: json['cat_name'],
      author: json['author'],
      view: json['view'],
      status: json['status'],
      createdAt: json['created_at'],
    );
  }
}