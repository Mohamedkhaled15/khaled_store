import 'package:flutter/material.dart';
import 'package:khaled_store/core/extensions/context_ext.dart';
import 'package:khaled_store/core/routes/app_routes.dart';

class TestOneScreen extends StatelessWidget {
  const TestOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Test One Screen'),
      ),
      body: Center(
        child: TextButton(
          child: const Text('Go To Tow Screen'),
          onPressed: () {
            context.pushName(AppRoutes.testTow);
          },
        ),
      ),
    );
  }
}
