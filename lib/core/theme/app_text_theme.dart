import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_colors.dart';

class AppTextTheme{
  static TextTheme get light => TextTheme(
    ///menu and button text
    bodyLarge: GoogleFonts.leagueSpartan(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.primaryTextColor,
    ),
    /// heading text
    headlineLarge: GoogleFonts.leagueSpartan(
      fontSize: 32,
      fontWeight: FontWeight.w700,
      color: AppColors.primaryTextColor,
    ),
    /// title text
    titleMedium: GoogleFonts.leagueSpartan(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: AppColors.primaryTextColor,
    ),
    bodyMedium: GoogleFonts.arimo(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.primaryTextColor,
    ),
  );
}