import 'package:flutter_techblog/controller/home_controller/home_controller.dart';
import 'package:flutter_techblog/controller/navigation_controller/navigation_controller.dart';
import 'package:flutter_techblog/controller/single_article_controller.dart';
import 'package:get/get.dart';

class ControllerBinding extends Bindings{
  @override
  void dependencies() {
    // navigation controller
    Get.put(NavigationController());
    // home controller
    Get.lazyPut(() => HomeController());
    // single article controller
    Get.lazyPut(() => SingleArticleController());
  }

}