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

  /// File path: assets/icons/android_studio_icon.png
  AssetGenImage get androidStudioIcon =>
      const AssetGenImage('assets/icons/android_studio_icon.png');

  /// File path: assets/icons/company_icon.png
  AssetGenImage get companyIcon =>
      const AssetGenImage('assets/icons/company_icon.png');

  /// File path: assets/icons/db_server_icon.png
  AssetGenImage get dbServerIcon =>
      const AssetGenImage('assets/icons/db_server_icon.png');

  /// File path: assets/icons/firebase_icon.png
  AssetGenImage get firebaseIcon =>
      const AssetGenImage('assets/icons/firebase_icon.png');

  /// File path: assets/icons/flutter_icon.png
  AssetGenImage get flutterIcon =>
      const AssetGenImage('assets/icons/flutter_icon.png');

  /// File path: assets/icons/github.png
  AssetGenImage get github => const AssetGenImage('assets/icons/github.png');

  /// File path: assets/icons/group_icon.png
  AssetGenImage get groupIcon =>
      const AssetGenImage('assets/icons/group_icon.png');

  /// File path: assets/icons/learn_icon.png
  AssetGenImage get learnIcon =>
      const AssetGenImage('assets/icons/learn_icon.png');

  /// File path: assets/icons/linked_in.png
  AssetGenImage get linkedIn =>
      const AssetGenImage('assets/icons/linked_in.png');

  /// File path: assets/icons/mobile_icon.jpg
  AssetGenImage get mobileIcon =>
      const AssetGenImage('assets/icons/mobile_icon.jpg');

  /// File path: assets/icons/nodejs_icon.png
  AssetGenImage get nodejsIcon =>
      const AssetGenImage('assets/icons/nodejs_icon.png');

  /// File path: assets/icons/react_icon.png
  AssetGenImage get reactIcon =>
      const AssetGenImage('assets/icons/react_icon.png');

  /// File path: assets/icons/web_icon.png
  AssetGenImage get webIcon => const AssetGenImage('assets/icons/web_icon.png');

  /// File path: assets/icons/xcode_icon.png
  AssetGenImage get xcodeIcon =>
      const AssetGenImage('assets/icons/xcode_icon.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    androidStudioIcon,
    companyIcon,
    dbServerIcon,
    firebaseIcon,
    flutterIcon,
    github,
    groupIcon,
    learnIcon,
    linkedIn,
    mobileIcon,
    nodejsIcon,
    reactIcon,
    webIcon,
    xcodeIcon,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Google-flutter-logo.svg.png
  AssetGenImage get googleFlutterLogoSvg =>
      const AssetGenImage('assets/images/Google-flutter-logo.svg.png');

  /// File path: assets/images/avatar.jpg
  AssetGenImage get avatar => const AssetGenImage('assets/images/avatar.jpg');

  /// File path: assets/images/biib.png
  AssetGenImage get biib => const AssetGenImage('assets/images/biib.png');

  /// File path: assets/images/clinger.png
  AssetGenImage get clinger => const AssetGenImage('assets/images/clinger.png');

  /// File path: assets/images/gig_logo.png
  AssetGenImage get gigLogo =>
      const AssetGenImage('assets/images/gig_logo.png');

  /// File path: assets/images/img_login.jpg
  AssetGenImage get imgLogin =>
      const AssetGenImage('assets/images/img_login.jpg');

  /// File path: assets/images/img_no_jobs.png
  AssetGenImage get imgNoJobs =>
      const AssetGenImage('assets/images/img_no_jobs.png');

  /// File path: assets/images/morning_bird.png
  AssetGenImage get morningBird =>
      const AssetGenImage('assets/images/morning_bird.png');

  /// File path: assets/images/mymonx.png
  AssetGenImage get mymonx => const AssetGenImage('assets/images/mymonx.png');

  /// File path: assets/images/not_found.png
  AssetGenImage get notFound =>
      const AssetGenImage('assets/images/not_found.png');

  /// File path: assets/images/real_agent.png
  AssetGenImage get realAgent =>
      const AssetGenImage('assets/images/real_agent.png');

  /// File path: assets/images/real_launch.png
  AssetGenImage get realLaunch =>
      const AssetGenImage('assets/images/real_launch.png');

  /// File path: assets/images/wile.png
  AssetGenImage get wile => const AssetGenImage('assets/images/wile.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    googleFlutterLogoSvg,
    avatar,
    biib,
    clinger,
    gigLogo,
    imgLogin,
    imgNoJobs,
    morningBird,
    mymonx,
    notFound,
    realAgent,
    realLaunch,
    wile,
  ];
}

class $AssetsPdfGen {
  const $AssetsPdfGen();

  /// File path: assets/pdf/Truong_Thai_Ngan.pdf
  String get truongThaiNgan => 'assets/pdf/Truong_Thai_Ngan.pdf';

  /// List of all assets
  List<String> get values => [truongThaiNgan];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsPdfGen pdf = $AssetsPdfGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
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

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
