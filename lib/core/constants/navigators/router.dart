import 'package:flutter/material.dart';
import 'package:primedehealth/core/constants/navigators/routes.dart';
import 'package:primedehealth/features/onboarding/presentation/pages/login_screen.dart';
import 'package:primedehealth/features/onboarding/presentation/pages/splash_screen.dart';
import 'package:primedehealth/features/items/presentation/pages/home_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RouteName.splash:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const SplashScreenView(),
      );

    case RouteName.login:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const LogginScreen(),
      );

    case RouteName.home:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const HomeScreen(),
      );

    default:
      return MaterialPageRoute<dynamic>(
        builder: (_) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ),
      );
  }
}

Route<dynamic> _getPageRoute({
  required String routeName,
  required Widget viewToShow,
}) {
  return MaterialPageRoute(
    settings: RouteSettings(
      name: routeName,
    ),
    builder: (_) => viewToShow,
  );
}
