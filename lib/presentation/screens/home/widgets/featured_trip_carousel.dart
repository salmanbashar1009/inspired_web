import 'package:flutter/material.dart';
import 'package:inspired_web/core/constants/app_images.dart';
import '../../../../core/utils/utils.dart';

class FeaturedTripCarousel extends StatelessWidget {
  const FeaturedTripCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_forward_ios, size: 30),
        ),
        const SizedBox(width: 24),
        SizedBox(
          width: 1098,
          height: 465, // Constrain the height of the ListView
          child: ListView.builder(
            scrollDirection:
                Axis.horizontal, // Set scroll direction to horizontal
            itemCount: 10,
            itemBuilder: (context, index) {
              return Card(
                margin: const EdgeInsets.only(right: 24),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 250,
                      width: 350, // Give each item a fixed width
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(AppImages.nextTripImage),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Utils.priceTag(context: context, price: "\$2189"),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: 350,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "NC500 Motorcycle Trip",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              '''Due to the nature of much of the roads along the NC500 we limit this trip to 30 bikes to minimize congestion etc''',
                              style: Theme.of(context).textTheme.bodyLarge,
                              maxLines: 3,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 16,),
                            Align(
                                alignment: Alignment.center,
                                child: Utils.primaryButton(context: context, text: "View Details", onTap: (){},width: double.infinity))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
        const SizedBox(width: 24),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new, size: 30),
        ),
      ],
    );
  }
}
