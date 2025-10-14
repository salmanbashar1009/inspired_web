import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Container(
                  height: 500,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    image: const DecorationImage(
                      image: NetworkImage(
                        "https://t4.ftcdn.net/jpg/04/76/96/25/360_F_476962538_cUpaVWV6ATjGzZz23QA39TcMVCm4e4ur.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    height: 500,
                    width: double.infinity,
                    color: AppColors.onBackgroundColor.withAlpha(65),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
