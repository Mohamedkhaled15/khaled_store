import 'package:flutter/material.dart';
import 'package:khaled_store/core/style/images/app_images.dart';

class MyAssets extends ThemeExtension<MyAssets> {
  const MyAssets({
    required this.testImage,
  });

  final String? testImage;

  @override
  ThemeExtension<MyAssets> copyWith({
    String? testImage,
  }) {
    return MyAssets(
      testImage: testImage,
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
    );
  }

  static const MyAssets dark = MyAssets(
    testImage: AppImages.darkTestImage,
  );
  static const MyAssets light = MyAssets(
    testImage: AppImages.lightTestImage,
  );
}
