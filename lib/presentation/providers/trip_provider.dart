
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:inspired_web/data/data_sources/trip_data_source.dart';
import 'package:inspired_web/data/models/trip_model.dart';
import 'package:inspired_web/data/repositories/repository.dart';

/// Provider for data source
final tripDataSourceProvider = Provider<TripDataSource>((ref){
  return TripDataSource();
});

/// Provider for repository
final tripRepositoryProvider = Provider<TripRepository>((ref){
  final dataSource = ref.watch(tripDataSourceProvider);
  return  TripRepository(dataSource: dataSource);
});

/// Future provider for getting all trips
final allTripsProvider = FutureProvider<List<TripModel>>((ref){
  final repositoryProvider = ref.watch(tripRepositoryProvider);
  return repositoryProvider.getAllTrips();
});