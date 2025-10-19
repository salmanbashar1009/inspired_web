import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../shared_widgets/banner_section.dart';
import 'next_trip_container.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SizedBox(height: 600),
        BannerSection(imageUrl: AppImages.hombeBanner),
        Positioned(
          bottom: 200,
          left: (MediaQuery.of(context).size.width - 950) / 2,
          child: Container(
            color: AppColors.primaryColor,
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: Text(
              AppStrings.ourNextTrips,
              style: Theme.of(context).textTheme.titleMedium
                  ?.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                fontFamily: GoogleFonts.arimo().fontFamily,
                color: AppColors.secondaryTextColor,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: (MediaQuery.of(context).size.width - 1000) / 2,
          right: (MediaQuery.of(context).size.width - 1000) / 2,
          child: NextTripContainer(),
        ),
      ],
    );
  }
}
