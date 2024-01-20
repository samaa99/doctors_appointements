import 'package:doctors_appointements_app/core/routing/routes.dart';
import 'package:doctors_appointements_app/features/onBoarding/onbording_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch(settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (context) {
          return const OnBoardingScreen();
        });
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (context) {
          return const OnBoardingScreen();
        });
      default:
        return MaterialPageRoute(builder: (context) {
          return Scaffold(
            body: Center(
              child: Text('There is no route defined for ${settings.name}'),
            ),
          );
        });
    }
  }
}