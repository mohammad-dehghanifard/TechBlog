import 'package:flutter/material.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';

class TechDivider extends StatelessWidget {
  final double thickness;
  const TechDivider({
    required this.thickness,
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return  Padding(
      padding: const EdgeInsets.fromLTRB(32,0,32,8),
      child: Divider(color: SolidColors.techDividerColor,thickness: thickness),
    );
  }
}