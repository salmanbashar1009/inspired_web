import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inspired_web/core/constants/app_colors.dart';

import 'app_text_theme.dart';

class AppTheme {

  static  MaterialColor primaryBrandMaterialColor = AppColors.createMaterialColor(
      AppColors.primaryBrandColor);

  static ThemeData get lightTheme {
    return ThemeData(
      primarySwatch: primaryBrandMaterialColor,
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: AppColors.backgroundColor,
      cardColor: AppColors.surfaceColor,
      fontFamily: GoogleFonts.leagueSpartan().fontFamily,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColors.secondaryTextColor),
      ),
      textTheme: AppTextTheme.light

    );
  }
}