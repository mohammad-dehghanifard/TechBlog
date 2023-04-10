import 'package:flutter_techblog/controller/navigation_controller/navigation_controller.dart';
import 'package:get/get.dart';

class ControllerBinding extends Bindings{
  @override
  void dependencies() {
    // navigation controller
    Get.put(NavigationController());
  }

}