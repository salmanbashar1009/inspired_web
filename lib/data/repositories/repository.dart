
import '../data_sources/trip_data_source.dart';
import '../models/trip_model.dart';

class TripRepository{
final TripDataSource _dataSource;
TripRepository({required TripDataSource dataSource}):_dataSource = dataSource;

Future<List<TripModel>> getAllTrips()async{
  try{
    return await _dataSource.getAllTrips();
  }catch(e){
    throw Exception("Failed to fetch trips: $e");
  }
}

}