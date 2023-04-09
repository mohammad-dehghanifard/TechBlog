/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/aroowDown.png
  AssetGenImage get aroowDown =>
      const AssetGenImage('assets/icons/aroowDown.png');

  /// File path: assets/icons/articleicon.png
  AssetGenImage get articleicon =>
      const AssetGenImage('assets/icons/articleicon.png');

  /// File path: assets/icons/hastag.png
  AssetGenImage get hastag => const AssetGenImage('assets/icons/hastag.png');

  /// File path: assets/icons/homeicon.png
  AssetGenImage get homeicon =>
      const AssetGenImage('assets/icons/homeicon.png');

  /// File path: assets/icons/podcasticon.png
  AssetGenImage get podcasticon =>
      const AssetGenImage('assets/icons/podcasticon.png');

  /// File path: assets/icons/user.png
  AssetGenImage get user => const AssetGenImage('assets/icons/user.png');

  /// File path: assets/icons/witepodcasticon.png
  AssetGenImage get witepodcasticon =>
      const AssetGenImage('assets/icons/witepodcasticon.png');

  /// File path: assets/icons/write.png
  AssetGenImage get write => const AssetGenImage('assets/icons/write.png');

  /// File path: assets/icons/writeicon.png
  AssetGenImage get writeicon =>
      const AssetGenImage('assets/icons/writeicon.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        aroowDown,
        articleicon,
        hastag,
        homeicon,
        podcasticon,
        user,
        witepodcasticon,
        write,
        writeicon
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/poster.jpg
  AssetGenImage get poster => const AssetGenImage('assets/images/poster.jpg');

  /// File path: assets/images/profileavatar.png
  AssetGenImage get profileavatar =>
      const AssetGenImage('assets/images/profileavatar.png');

  /// File path: assets/images/singleimg.jpg
  AssetGenImage get singleimg =>
      const AssetGenImage('assets/images/singleimg.jpg');

  /// File path: assets/images/techbot.svg
  String get techbot => 'assets/images/techbot.svg';

  /// File path: assets/images/upsettechbot.svg
  String get upsettechbot => 'assets/images/upsettechbot.svg';

  /// List of all assets
  List<dynamic> get values =>
      [logo, poster, profileavatar, singleimg, techbot, upsettechbot];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
