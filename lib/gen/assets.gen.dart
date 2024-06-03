/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/bg.png
  AssetGenImage get bg => const AssetGenImage('assets/images/bg.png');

  /// File path: assets/images/img1.png
  AssetGenImage get img1 => const AssetGenImage('assets/images/img1.png');

  /// File path: assets/images/loan_logo.gif
  AssetGenImage get loanLogo =>
      const AssetGenImage('assets/images/loan_logo.gif');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/logo_main.png
  AssetGenImage get logoMain =>
      const AssetGenImage('assets/images/logo_main.png');

  /// File path: assets/images/online.png
  AssetGenImage get online => const AssetGenImage('assets/images/online.png');

  /// File path: assets/images/shopping-cards.png
  AssetGenImage get shoppingCards =>
      const AssetGenImage('assets/images/shopping-cards.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [bg, img1, loanLogo, logo, logoMain, online, shoppingCards];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size = null});

  final String _assetName;

  final Size? size;

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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
