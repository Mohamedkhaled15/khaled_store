import 'package:flutter/material.dart';
import 'package:khaled_store/core/style/images/app_images.dart';

class MyAssets extends ThemeExtension<MyAssets> {
  const MyAssets({
    required this.testImage,
    required this.bigNavBar,
    required this.homeBg,
  });

  final String? testImage;
  final String? bigNavBar;
  final String? homeBg;

  @override
  ThemeExtension<MyAssets> copyWith({
    String? testImage,
    String? bigNavBar,
    String? homeBg,
  }) {
    return MyAssets(
      testImage: testImage,
      bigNavBar: bigNavBar,
      homeBg: homeBg,
    );
  }

  @override
  ThemeExtension<MyAssets> lerp(
    covariant ThemeExtension<MyAssets>? other,
    double t,
  ) {
    if (other is! MyAssets) {
      return this;
    }
    return MyAssets(
      testImage: testImage,
      bigNavBar: bigNavBar,
      homeBg: homeBg,
    );
  }

  static const MyAssets dark = MyAssets(
    testImage: AppImages.darkTestImage,
    bigNavBar: AppImages.bigIconNavBarDark,
    homeBg: AppImages.homeBgDark,
  );

  static const MyAssets light = MyAssets(
    testImage: AppImages.lightTestImage,
    bigNavBar: AppImages.bigIconNavBarLight,
    homeBg: AppImages.homeBgLight,
  );
}
