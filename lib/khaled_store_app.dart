import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khaled_store/core/app/connectivity_controller.dart';
import 'package:khaled_store/core/app/env.variables.dart';
import 'package:khaled_store/core/common/screens/no_network_screen.dart';
import 'package:khaled_store/core/language/app_localization_setup.dart';
import 'package:khaled_store/core/routes/app_routes.dart';
import 'package:khaled_store/core/style/theme/app_theme.dart';

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
              //theme
              theme: themeDark(),
              //localization
              locale: const Locale('ar'),
              supportedLocales: AppLocalizationsSetup.supportedLocales,
              localizationsDelegates:
                  AppLocalizationsSetup.localizationsDelegates,
              localeResolutionCallback:
                  AppLocalizationsSetup.localeResolutionCallback,
              builder: (context, widget) {
                return GestureDetector(
                  onTap: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  child: Scaffold(
                    body: Builder(
                      builder: (context) {
                        ConnectivityController.instance.init();
                        return widget!;
                      },
                    ),
                  ),
                );
              },
              onGenerateRoute: AppRoutes.onGenerateRoute,
              initialRoute: AppRoutes.testOne,
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
