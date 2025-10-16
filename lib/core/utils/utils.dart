import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class Utils{
  /// price tag
  static Widget priceTag({required BuildContext context, required String price}){
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 4
        ),
        margin: const EdgeInsets.only(left: 12, top: 8),
        decoration: BoxDecoration(
          color: Colors.black.withAlpha(50),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          price,
          style: Theme.of(context).textTheme.bodyLarge
              ?.copyWith(
            fontWeight: FontWeight.w600,
            color: AppColors.secondaryTextColor,
          ),
        ),
      ),
    );
  }


  /// primary button
 static Widget primaryButton({required BuildContext context, required String text, required VoidCallback onTap, double? width}){
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(99),
          gradient: LinearGradient(colors: [
            AppColors.gradientStartColor,
            AppColors.gradientEndColor
          ]),
        ),
        child: Text(text,style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: AppColors.secondaryTextColor
        ),),
      ),
    );
 }
}