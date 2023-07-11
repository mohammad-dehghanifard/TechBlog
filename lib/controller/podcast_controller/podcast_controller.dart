// ignore_for_file: prefer_typing_uninitialized_variables
import 'dart:developer';
import 'package:flutter_techblog/core/constants/api_url/api_urls.dart';
import 'package:flutter_techblog/core/services/web_service.dart';
import 'package:flutter_techblog/model/podcast_model/podcast_file_model.dart';
import 'package:flutter_techblog/model/podcast_model/podcast_model.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:just_audio/just_audio.dart';

class PodcastController extends GetxController{

//================= variables ==================================================
  bool isLoading = false;
  bool playState = false;
  PodcastModel? podCast;
  PodcastFileModel currentPodcast = PodcastFileModel();
  List<PodcastFileModel> allPodcastFile = [];
  final AudioPlayer player = AudioPlayer();
  late ConcatenatingAudioSource  playList;

//================= functions ==================================================
Future<void> getAllPodcastFile() async {
  Map<String,dynamic> map = {
    "podcats_id" : podCast!.id,
    "command" : "get_files"
  };
  isLoading = true;
  update();
  final  response = await TechWebService.getRequest(url: ApiUrls.getPodcastFileApi,params: map);
  log(response.data.toString());
  if(response.statusCode == 200){
    for(var file in response.data["files"]){
      allPodcastFile.add(PodcastFileModel.fromJson(file));
      playList.add(AudioSource.uri(Uri.parse(PodcastFileModel.fromJson(file).file!)));
    }
    isLoading = false;
    update();
  }
}

  void getPlayState() {
    playState = !playState;
    update();
  }

//================= lifeCycle =================================================
@override
  void onInit() {
    super.onInit();
    playList = ConcatenatingAudioSource(
        useLazyPreparation:  true,
        children: []);
}

}