import 'package:flutter/material.dart';
import 'package:khaled_store/core/common/screens/page_under_build.dart';
import 'package:khaled_store/core/routes/base_routes.dart';
import 'package:khaled_store/layout/features/auth/presentation/screens/login_screen.dart';
import 'package:khaled_store/layout/features/auth/presentation/screens/sign_up_screen.dart';

class AppRoutes {
  static const String logIn = 'logIn';
  static const String signUp = 'signUp';
  static Route<void> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case logIn:
        return BaseRoute(
          page: const LoginScreen(),
        );
      case signUp:
        return BaseRoute(page: const SignUpScreen());

      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}
