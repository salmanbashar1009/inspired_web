import 'package:flutter/material.dart';
import 'package:inspired_web/core/route_config/app_routes.dart';
import 'package:inspired_web/core/route_config/route_names.dart';
import 'core/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Inspired Events & Tours",
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: AppTheme.lightTheme,
      initialRoute: RouteNames.splashScreen,
      routes: AppRoutes.routes,
    );
  }
}
