import 'package:flutter/material.dart';
import 'package:flutter_techblog/core/constants/storage_keys/storage_keys.dart';
import 'package:flutter_techblog/view/home_screen/screens/home_screen.dart';
import 'package:flutter_techblog/view/profile_screen/screens/profile_screen.dart';
import 'package:flutter_techblog/view/register_screen/screens/register_intro_screen.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class NavigationController extends GetxController {
  RxInt selectedPage = 0.obs;
  List<Widget> techScreens = [
    const HomeScreen(),
    ProfileScreen(),
    const RegisterIntro()
  ];
}