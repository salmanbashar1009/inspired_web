import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_strings.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100,
      title: Row(
        children: [
          Image.asset(AppImages.appTextLogo,fit: BoxFit.contain,height: 75,width: 230,),
          Spacer(),
          Row(
            children: List.generate(AppStrings.menu.length, (index){
              return Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text(AppStrings.menu[index],style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 22
                ),),
              );
            }),
          ),
          const SizedBox(width: 24,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(99),
              gradient: LinearGradient(colors: [
                AppColors.gradientStartColor,
                AppColors.gradientEndColor
              ]),
            ),
            child: Text(AppStrings.contactUs,style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
                color: AppColors.secondaryTextColor
            ),),
          ),
          const SizedBox(width: 75,),
        ],
      ),
    );
  }
}
