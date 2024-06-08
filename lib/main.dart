import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khaled_store/core/app/bloc_observer.dart';
import 'package:khaled_store/core/app/env.variables.dart';
import 'package:khaled_store/firebase_options.dart';
import 'package:khaled_store/khaled_store_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EnvVariable.instance.init(envType: EnvTypeEnum.prod);
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
            apiKey: 'AIzaSyB6Rwq1OPfOqJIMyQ7_VqaVE35k90kVcLw',
            appId: '1:414239312964:android:d6365d32f02a0c1b2dc011',
            messagingSenderId: '414239312964',
            projectId: 'khaled-store-3c4a5',
          ),
        )
      : await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        );

  Bloc.observer = AppBlocObserver();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]).then((value) => runApp(const KhaledStoreApp()));
}
