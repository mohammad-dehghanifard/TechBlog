import 'package:flutter/material.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';

class BackBtn extends StatelessWidget {
  const BackBtn({
    super.key,
    required this.onTap
  });

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        width: 40,
        height: 40,
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: SolidColors.pinkBtn
        ),
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
