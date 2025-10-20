
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:inspired_web/core/constants/app_strings.dart';
import 'package:inspired_web/presentation/providers/trip_provider.dart';
import 'package:inspired_web/presentation/screens/home/widgets/featured_trip_carousel.dart';
import 'package:inspired_web/presentation/screens/home/widgets/home_banner.dart';
import 'package:inspired_web/presentation/shared_widgets/headline_section.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_images.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                HomeBanner(),
                const SizedBox(height: 60),
               const  HeadlineSection(text: AppStrings.featuredTrips),
                const SizedBox(height: 30),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Consumer(
                    builder: (context,ref,child){
                      final tripAsync = ref.watch(allTripsProvider);
                      return tripAsync.when(
                          data: (trips){
                            return FeaturedTripCarousel(trips: trips);
                          },
                          loading: ()=> const Center(child: CircularProgressIndicator(),),
                        error: (error,stackTrace)=> Text('Error loading data: $error')
                      );
                    },
                  ),
                ),
                const SizedBox(height: 60),
                const  HeadlineSection(text: AppStrings.exploreAllBikeTrips),
                const SizedBox(height: 30),
                SizedBox(
                  width: 1090,
                  child: Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: List.generate(5, (index){
                      return Container(
                        alignment: Alignment.center,
                        width: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.yellow,
                          image: DecorationImage(image: NetworkImage(AppImages.nextTripImage),
                          onError: (_,__){
                             Icon(Icons.image);
                          },
                          fit: BoxFit.fill),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                            width: 350,
                            height: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: AppColors.onBackgroundColor.withAlpha(100)
                            ),
                            child: Text("NC500 Motorcycle Road Trip", style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              color: AppColors.secondaryTextColor
                            ),)),
                      );
                    }),
                  ),
                ),
                // GridView.builder(
                //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //         crossAxisCount: 3,
                //       mainAxisSpacing: 20,
                //       crossAxisSpacing: 20,
                //       childAspectRatio: 16/9
                //     ),
                //     itemCount: 5,
                //     itemBuilder: (context,index){
                //       return Container(
                //         decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(10),
                //           color: Colors.yellow
                //         ),
                //         child: Text('Bike Trip'),
                //       );
                //     }
                // ),
                const SizedBox(height: 60),
                const  HeadlineSection(text: AppStrings.exploreAllCarTrips),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

