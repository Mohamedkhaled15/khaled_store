import 'package:flutter/material.dart';
import 'package:khaled_store/layout/features/auth/presentation/refactors/sign_up_body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        bottom: false,
        child: SignUpBody(),
      ),
    );
  }
}
