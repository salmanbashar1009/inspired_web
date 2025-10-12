import 'package:flutter/cupertino.dart';
import 'package:inspired_web/core/route_config/route_names.dart';
import 'package:inspired_web/presentation/screens/home/home_screen.dart';
import 'package:inspired_web/presentation/screens/trips/trips_screen.dart';

import '../../presentation/screens/splash/splash_screen.dart';

class AppRoutes{
  static Map<String,WidgetBuilder> get routes{
    return {
      RouteNames.splashScreen: (context) => const SplashScreen(),
      RouteNames.homeScreen: (context) => const HomeScreen(),
      RouteNames.tripsScreen: (context) => const TripsScreen(),

    };
  }
}