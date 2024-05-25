import 'package:flutter/material.dart';
import 'package:khaled_store/core/extensions/context_ext.dart';
import 'package:khaled_store/core/language/lang_keys.dart';
import 'package:khaled_store/core/routes/app_routes.dart';

class TestOneScreen extends StatelessWidget {
  const TestOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test One Screen'),
      ),
      body: Column(
        children: [
          Image.asset(
            context.assets.testImage ?? '',
          ),
          Center(
            child: TextButton(
              child: const Text('Go To Tow Screen'),
              onPressed: () {
                context.pushName(AppRoutes.testTow);
              },
            ),
          ),
          Text(context.tr(AppLocaleKey.appName)),
        ],
      ),
    );
  }
}
