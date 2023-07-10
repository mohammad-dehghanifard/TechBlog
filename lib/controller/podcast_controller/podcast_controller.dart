import 'package:flutter_techblog/core/constants/api_url/api_urls.dart';
import 'package:flutter_techblog/core/services/web_service.dart';
import 'package:flutter_techblog/model/podcast_model/podcast_file_model.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class PodcastController extends GetxController{

//================= variables ==================================================
  bool isLoading = false;
  String? podCastId;
  PodcastFileModel currentPodcast = PodcastFileModel();
  List<PodcastFileModel> allPodcastFile = [];

//================= functions ==================================================
Future<void> getAllPodcastFile() async {
  Map<String,dynamic> map = {
    "podcats_id" : podCastId,
    "command" : "get_files"
  };
  isLoading = true;
  update();
  final  response = await TechWebService.getRequest(url: ApiUrls.sendNewArticleApi,params: map);
  if(response.statusCode == 200){
    for(var file in response.data["files"]){
      allPodcastFile.add(PodcastFileModel.fromJson(file));
    }
    isLoading = false;
    update();
  }
}

}