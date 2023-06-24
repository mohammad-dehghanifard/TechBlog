import 'package:flutter_techblog/controller/home_controller/home_controller.dart';
import 'package:flutter_techblog/controller/navigation_controller/navigation_controller.dart';
import 'package:flutter_techblog/controller/register_controller/register_controller.dart';
import 'package:flutter_techblog/controller/article_controller/article_controller.dart';
import 'package:get/get.dart';

class ControllerBinding extends Bindings{
  @override
  void dependencies() {
    // navigation controller
    Get.put(NavigationController());
    // home controller
    Get.lazyPut(() => HomeController());
    // single article controller
    Get.put(ArticleController());
    // register controller
    Get.lazyPut(() => RegisterController());
  }

}