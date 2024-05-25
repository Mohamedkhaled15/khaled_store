import 'package:flutter/material.dart';
import 'package:khaled_store/core/common/screens/page_under_build.dart';
import 'package:khaled_store/core/routes/base_routes.dart';
import 'package:khaled_store/layout/features/test_one_screen.dart';
import 'package:khaled_store/layout/features/test_tow_screen.dart';

class AppRoutes {
  static const String testOne = 'testOne';
  static const String testTow = 'testTow';
  static Route<void> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case testOne:
        return BaseRoute(
          page: const TestOneScreen(),
        );
      case testTow:
        return BaseRoute(page: const TestTowScreen());

      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}
