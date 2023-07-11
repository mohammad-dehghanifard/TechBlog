import 'package:flutter_techblog/core/constants/api_url/api_urls.dart';

class PodcastFileModel{
  String? id;
  String? podcastId;
  String? file;
  String? title;
  String? length;


  PodcastFileModel();

  PodcastFileModel.fromJson(Map<String,dynamic> json){
    id = json["id"];
    podcastId = json["podcast_id"];
    file = ApiUrls.baseWebSiteUrl + json["file"];
    title = json["title"];
    length = json["length"];
  }
}
