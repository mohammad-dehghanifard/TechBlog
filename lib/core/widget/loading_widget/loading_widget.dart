import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';

class ApplicationLoading extends StatelessWidget {
  const ApplicationLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SpinKitThreeBounce(
        color: SolidColors.darkPurple,
        size: 32
      )
    );
  }
}
