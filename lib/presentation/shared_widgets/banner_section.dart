import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({
    super.key,  this.child, required this.imageUrl,
  });

   final String imageUrl;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: Container(
        height: 500,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          image:  DecorationImage(
            image: NetworkImage(
              imageUrl,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          height: 500,
          width: double.infinity,
          color: AppColors.onBackgroundColor.withAlpha(65),
          child: child,
        ),
      ),
    );
  }
}
