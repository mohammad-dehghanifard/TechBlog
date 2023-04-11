import 'package:flutter/material.dart';
import 'package:flutter_techblog/view/home_screen/screens/home_screen.dart';
import 'package:flutter_techblog/view/profile_screen/screens/profile_screen.dart';
import 'package:flutter_techblog/view/register_screen/screens/register_intro_screen.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController{
  RxInt selectedPage = 0.obs;
  List<Widget> techScreens = [const HomeScreen(),const ProfileScreen(),const RegisterIntro()];
}