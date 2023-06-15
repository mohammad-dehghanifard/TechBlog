import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_techblog/core/widget/loading_widget/loading_widget.dart';
import 'package:flutter_techblog/gen/assets.gen.dart';

class TechCachedImage extends StatelessWidget {
  const TechCachedImage({
    super.key, required this.imageLink,
  });
  final String imageLink;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageLink,
      fit: BoxFit.fill,
      placeholder: (context, url) => const ApplicationLoading(),
      errorWidget: (context, url, error) => Image.asset(Assets.images.singleimg.path),
    );
  }
}