import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_images.dart';

class NextTripContainer extends StatelessWidget {
  const NextTripContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 1000,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xFFf6f6f8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              image: DecorationImage(
                image: NetworkImage(AppImages.nextTripImage),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(width: 24),
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 16,
              children: [
                Text(
                  'NC500 Motorcycle Trip',
                  style: Theme.of(
                    context,
                  ).textTheme.titleMedium?.copyWith(fontSize: 24),
                  maxLines: 2,
                ),
                Text(
                  'Due to the nature of much of the roads along the NC500 we limit this trip to 30 bikes to minimize congestion etc',
                  style: Theme.of(context).textTheme.bodyMedium,
                  softWrap: true,
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          const VerticalDivider(
            color: AppColors.primaryTextColor,
            thickness: 3,
            endIndent: 24,
            indent: 24,
          ),
          const SizedBox(width: 16),
          Expanded(
            flex: 1,
            child: Text(
              '25th - 28th August, 2026',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }
}
