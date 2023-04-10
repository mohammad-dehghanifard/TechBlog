import 'package:flutter/material.dart';
import 'package:flutter_techblog/controller/navigation_controller/navigation_controller.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';
import 'package:flutter_techblog/core/widget/app_bar/coustom_app_bar_widget.dart';
import 'package:flutter_techblog/core/widget/coustom_bottom_navigation/coustom_bouttom_navigation.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
   MainScreen({Key? key}) : super(key: key);
  final NavigationController _navController = Get.find<NavigationController>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBars.mainAppBar(size: size, menuTap:(){}, searchTap: (){}),
      backgroundColor: SolidColors.scaffoldColor,
      body: Obx(
        () {
          return Stack(
            children: [

              Positioned.fill(
                child: IndexedStack(
                  index: _navController.selectedPage.value,
                  children: _navController.techScreens,
                ),
              ),
              // custom bottomNavigation
              CustomBottomNavigation(size: size,changeScreen: (value) => _navController.selectedPage.value = value,)
            ],
          );
        },
      ),
    );
  }
}
