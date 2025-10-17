import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final featuredCarouselControllerProvider = Provider.autoDispose<ScrollController>((ref){
  final controller = ScrollController();
  final timer = Timer.periodic(const Duration(seconds: 5), (_){
    if(!controller.hasClients) return;
    const scrollStep = 374.0;
    final maxScroll = controller.position.maxScrollExtent;
    final current = controller.offset;
    double target = current + scrollStep;
    if(target >= maxScroll) target = 0;
    controller.animateTo(target, duration: const Duration(microseconds: 600), curve: Curves.easeInOut);
  });

  ref.onDispose((){
    timer.cancel();
    controller.dispose();
  });
  return controller;
});




// final carouselControllerProvider = Provider.autoDispose<ScrollController>((ref) {
//   final controller = ScrollController();
//   final timer = Timer.periodic(const Duration(seconds: 1), (_) {
//     if (!controller.hasClients) return;
//     const scrollStep = 374.0;
//     final maxScroll = controller.position.maxScrollExtent;
//     final current = controller.offset;
//     double target = current + scrollStep;
//     if (target >= maxScroll) target = 0;
//     controller.animateTo(target,
//         duration: const Duration(milliseconds: 600), curve: Curves.easeInOut);
//   });
//
//   ref.onDispose(() {
//     timer.cancel();
//     controller.dispose();
//   });
//
//   return controller;
// });
