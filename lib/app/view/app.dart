import 'package:device_preview/device_preview.dart';

import 'package:flutter/material.dart';
import 'package:primedehealth/core/constants/app_colors.dart';
import 'package:primedehealth/core/constants/navigators/router.dart';
import 'package:primedehealth/core/constants/navigators/routes.dart';

import 'package:provider/provider.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return
            // MultiProvider(
            //   providers: [
            //     ChangeNotifierProvider(
            //       create: (_) => sl<GetUsersProvider>(),
            //     ),
            //   ],
            MaterialApp(
          debugShowCheckedModeBanner: false,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          onGenerateRoute: generateRoute,
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.kWhite,
            appBarTheme: const AppBarTheme(
              color: AppColors.kWhite,
            ),
            primaryColor: AppColors.kPrimary,
            colorScheme: ColorScheme.fromSwatch(
              accentColor: AppColors.kPrimary,
            ),
            useMaterial3: true,
          ),
          initialRoute: RouteName.splash,
        );
        // );
      },
    );
  }
}
