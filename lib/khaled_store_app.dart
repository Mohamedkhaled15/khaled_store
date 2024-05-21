import 'package:flutter/material.dart';

class KhaledStoreApp extends StatelessWidget {
  const KhaledStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Khaled Store',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Khaled Store"),
        ),
      ),
    );
  }
}
