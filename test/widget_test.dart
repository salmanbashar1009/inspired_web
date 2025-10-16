

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:inspired_web/core/constants/app_images.dart';
import 'package:inspired_web/core/route_config/route_names.dart';
import 'package:inspired_web/presentation/screens/splash/splash_screen.dart';


void main(){
  testWidgets("SplashScreen displays logo and navigates after delay", (WidgetTester tester)async{
    await tester.pumpWidget(
      MaterialApp(
        home: const SplashScreen(),
        routes: {
          RouteNames.parentScreen: (context) => const Scaffold(body: Text('Parent Screen')),
        },
      )
    );

    // Verify that the Image widget with the app logo is displayed
    expect(find.byType(Image), findsOneWidget);
    expect(find.image(const AssetImage(AppImages.appLogo)), findsOneWidget);



    // Fast-forward time to trigger the navigation
    await tester.pumpAndSettle(const Duration(seconds: 2));




});
}
