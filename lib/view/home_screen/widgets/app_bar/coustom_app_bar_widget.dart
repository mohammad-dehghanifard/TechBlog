import 'package:flutter/material.dart';
import 'package:flutter_techblog/gen/assets.gen.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({required this.size,required this.menuTap,required this.searchTap,Key? key}) : super(key: key);
  final Size size;
  final Function() menuTap;
  final Function() searchTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // menu btn
        IconButton(
            onPressed:menuTap,
            iconSize: 32,
            icon: const Icon(Icons.menu)),
        // logo
        Image.asset(Assets.images.logo.path,height: size.height / 13.6),
        //search btn
        IconButton(
            onPressed: searchTap,
            iconSize: 32,
            icon: const Icon(Icons.search)),
      ],
    );
  }
}
