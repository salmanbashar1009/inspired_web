import 'package:flutter/material.dart';
import 'package:inspired_web/presentation/screens/home/home_screen.dart';

import 'package:inspired_web/presentation/screens/parent/widgets/app_header.dart';

class ParentScreen extends StatelessWidget {
  const ParentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const AppHeader(),
            Expanded(child: HomeScreen()),
          ],
        ),
      ),
    );
  }
}
