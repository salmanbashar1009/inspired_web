import 'package:flutter/material.dart';
import 'package:inspired_web/core/constants/app_colors.dart';
import 'package:inspired_web/core/route_config/route_names.dart';

import '../../../core/constants/app_images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then((value) {
      if(mounted){
        Navigator.pushNamedAndRemoveUntil(context, RouteNames.homeScreen, (route) => false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child:  Image.asset(AppImages.appLogo,fit: BoxFit.contain,)
        ),
      ),
    );
  }
}
