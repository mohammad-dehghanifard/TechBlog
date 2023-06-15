import 'package:flutter_techblog/model/article_model/article_model.dart';
import 'main_poster_model.dart';



class Podcast {
  final String id;
  final String title;
  final String poster;
  final String catName;
  final String author;
  final String view;
  final String status;
  final String createdAt;

  Podcast({
    required this.id,
    required this.title,
    required this.poster,
    required this.catName,
    required this.author,
    required this.view,
    required this.status,
    required this.createdAt,
  });

  factory Podcast.fromJson(Map<String, dynamic> json) {
    return Podcast(
      id: json['id'],
      title: json['title'],
      poster: json['poster'],
      catName: json['cat_name'],
      author: json['author'],
      view: json['view'],
      status: json['status'],
      createdAt: json['created_at'],
    );
  }
}

class Tag {
  final String id;
  final String title;

  Tag({required this.id, required this.title});

  factory Tag.fromJson(Map<String, dynamic> json) {
    return Tag(
      id: json['id'],
      title: json['title'],
    );
  }
}

class Category {
  final String id;
  final String title;

  Category({required this.id, required this.title});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      title: json['title'],
    );
  }
}

class TechBlogHomeDataModel {
  final HomePosterModel poster;
  final List<Article> topVisited;
  final List<Podcast> topPodcasts;
  final List<Tag> tags;
  final List<Category> categories;

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

    var topVisitedList = topVisitedJson.map((result) => Article.fromJson(result)).toList();
    var topPodcastsList = topPodcastsJson.map((result) => Podcast.fromJson(result)).toList();
    var tagsList = tagsJson.map((result) => Tag.fromJson(result)).toList();
    var categoriesList = categoriesJson.map((result) => Category.fromJson(result)).toList();

    return TechBlogHomeDataModel(
      poster: HomePosterModel.fromJson(posterJson),
      topVisited: topVisitedList,
      topPodcasts: topPodcastsList,
      tags: tagsList,
      categories: categoriesList,
    );
  }
}
