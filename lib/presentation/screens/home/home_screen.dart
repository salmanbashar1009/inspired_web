import 'package:flutter/material.dart';

import 'package:inspired_web/presentation/screens/parent/widgets/app_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
       child: Column(
         children: [
           const AppHeader(),
           Expanded(child: Container(color: Colors.amber,)),
         ],
       ),
     ),
    );
  }
}
