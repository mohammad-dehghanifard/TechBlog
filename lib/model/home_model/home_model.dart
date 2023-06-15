import 'package:flutter_techblog/model/article_model/article_model.dart';
import 'package:flutter_techblog/model/podcast_model/podcast_model.dart';
import 'package:flutter_techblog/model/tag_model/tag_modle.dart';
import 'category_model.dart';
import 'main_poster_model.dart';

class TechBlogHomeDataModel {
  final HomePosterModel poster;
  final List<ArticleModel> topVisited;
  final List<PodcastModel> topPodcasts;
  final List<TagModel> tags;
  final List<CategoryModel> categories;

  TechBlogHomeDataModel({
    required this.poster,
    required this.topVisited,
    required this.topPodcasts,
    required this.tags,
    required this.categories,
  });

  factory TechBlogHomeDataModel.fromJson(Map<String, dynamic> json) {
    var posterJson = json['poster'];
    var topVisitedJson = json['top_visited'] as List;
    var topPodcastsJson = json['top_podcasts'] as List;
    var tagsJson = json['tags'] as List;
    var categoriesJson = json['categories'] as List;

    var topVisitedList = topVisitedJson.map((result) => ArticleModel.fromJson(result)).toList();
    var topPodcastsList = topPodcastsJson.map((result) => PodcastModel.fromJson(result)).toList();
    var tagsList = tagsJson.map((result) => TagModel.fromJson(result)).toList();
    var categoriesList = categoriesJson.map((result) => CategoryModel.fromJson(result)).toList();

    return TechBlogHomeDataModel(
      poster: HomePosterModel.fromJson(posterJson),
      topVisited: topVisitedList,
      topPodcasts: topPodcastsList,
      tags: tagsList,
      categories: categoriesList,
    );
  }
}
