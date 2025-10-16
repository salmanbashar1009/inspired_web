import 'package:flutter/material.dart';
import 'package:inspired_web/core/utils/utils.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_strings.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100,
      surfaceTintColor: Colors.transparent,
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
          Utils.primaryButton(context: context, text: AppStrings.contactUs, onTap: (){}),
          const SizedBox(width: 40,),
        ],
      ),
    );
  }
}
