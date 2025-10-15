import 'package:flutter/material.dart';
import 'package:inspired_web/presentation/shared_widgets/banner_section.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_images.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    const SizedBox(height: 600,),
                    BannerSection(imageUrl: AppImages.hombeBanner),
                    Positioned(
                      bottom: 0,
                      left: (MediaQuery.of(context).size.width-1000)/2,
                      right: (MediaQuery.of(context).size.width-1000)/2,
                      child: Container(
                        height: 200,
                        width: 1000,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xFFf6f6f8)
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 200,
                              width: 350,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  bottomLeft: Radius.circular(16)
                                ),
                                image: DecorationImage(image: NetworkImage(AppImages.nextTripImage),
                                fit: BoxFit.fill
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
