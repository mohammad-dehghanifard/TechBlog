import 'package:flutter/material.dart';

Future<dynamic> registerBottomSheet({ required BuildContext context, required Size size,required Widget child}) {
  return showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              )
          ),
          child: child
      );
    },);
}
