import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khaled_store/core/app/connectivity_controller.dart';
import 'package:khaled_store/core/app/env.variables.dart';
import 'package:khaled_store/core/common/screens/no_network_screen.dart';
import 'package:khaled_store/core/style/fonts/font_family_helper.dart';

class KhaledStoreApp extends StatelessWidget {
  const KhaledStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, __) {
        if (value) {
          return ScreenUtilInit(
            designSize: const Size(393, 852),
            child: MaterialApp(
              title: 'Khaled Store',
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              builder: (context, widget) {
                return Scaffold(
                  body: Builder(
                    builder: (context) {
                      ConnectivityController.instance.init();
                      return widget!;
                    },
                  ),
                );
              },
              home: Scaffold(
                appBar: AppBar(
                  title: const Text('Khaled Store'),
                ),
                body: const Column(
                  children: [
                    Text(
                      'Khaled Store',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      'ابو خالد ',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 1,
                    ),
                    Text(
                      'Khaled Store',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: FontFamilyHelper.poppinsEnglish,
                      ),
                    ),
                    Text(
                      'ابو خالد ',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: FontFamilyHelper.cairoArabic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 1,
                    ),
                  ],
                ),
              ),
              debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
            ),
          );
        } else {
          return MaterialApp(
            title: 'No Network',
            debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
            home: const NoNetworkScreen(),
          );
        }
      },
    );
  }
}
