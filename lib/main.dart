import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:primedehealth/app/view/app.dart';
import 'package:primedehealth/core/dependency_injection/injection.dart';

Future<void> main() async {
  // const environment = kReleaseMode ? '.env.production' : '.env.development';

  // await Future.wait([
  //   dotenv.load(fileName: environment),
  // ]);
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]).then((_) async {
    runApp(
      DevicePreview(
        enabled: false,
        builder: (context) => const App(),
      ),
    );
  });
}
