import 'package:flutter/material.dart';
import 'package:khaled_store/core/app/env.variables.dart';
import 'package:khaled_store/core/common/screens/no_network_screen.dart';

class KhaledStoreApp extends StatelessWidget {
  const KhaledStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'Khaled Store',
    //   theme: ThemeData(
    //     colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //     useMaterial3: true,
    //   ),
    //   home: Scaffold(
    //     appBar: AppBar(
    //       title: const Text('Khaled Store'),
    //     ),
    //   ),
    //   debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
    // );

    return MaterialApp(
      title: 'No Network',
      debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
      home: const NoNetworkScreen(),
    );
  }
}
