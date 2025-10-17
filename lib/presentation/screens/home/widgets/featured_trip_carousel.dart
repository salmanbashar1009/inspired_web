import 'package:flutter/material.dart';
import 'package:inspired_web/core/constants/app_images.dart';
import 'package:inspired_web/data/models/trip_model.dart';
import '../../../../core/utils/utils.dart';

class FeaturedTripCarousel extends StatelessWidget {
  const FeaturedTripCarousel({super.key, required this.trips, });

  final List<TripModel> trips ;

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
          height: 500, // Constrain the height of the ListView
          child: ListView.builder(
            scrollDirection:
                Axis.horizontal, // Set scroll direction to horizontal
            itemCount: trips.length,
            itemBuilder: (context, index) {
              return Card(
                margin: const EdgeInsets.only(right: 24),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildCarImage(context: context, trips: trips,index: index),
                    const SizedBox(height: 16),
                    buildCardDetails(context: context,trips: trips,index: index ),
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

  Widget buildCardDetails({required BuildContext context, required List<TripModel> trips, required int index}) {
    return SizedBox(
      width: 350,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              trips[index].title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            Text(
              trips[index].description ?? '',
              style: Theme.of(context).textTheme.bodyLarge,
              maxLines: 3,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.center,
              child: Utils.primaryButton(
                context: context,
                text: "View Details",
                onTap: () {},
                width: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCarImage({required BuildContext context, required List<TripModel> trips, required int index}) {
    return Container(
      height: 250,
      width: 350, // Give each item a fixed width
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(AppImages.nextTripImage),
          fit: BoxFit.fill,
        ),
      ),
      child: Utils.priceTag(context: context, price: trips[index].price ?? ''),
    );
  }
}
