import 'package:flutter/material.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class ApplicationLoading extends StatelessWidget {
  const ApplicationLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingAnimationWidget.threeArchedCircle(
        color: SolidColors.darkPurple,
        size: 48
      )
    );
  }
}
