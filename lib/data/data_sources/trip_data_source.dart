import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:inspired_web/core/urls/urls.dart';

import '../models/trip_model.dart';

class TripDataSource{

  /// theis method will fetch all trips from the server
  Future<List<TripModel>> getAllTrips()async{
    final url = Uri.parse(Urls.baseURL);
    final response = await http.get(url);
    if(kDebugMode){
      print("trip data : ${response.body}");
    }

    if(response.statusCode == 200){
      final List<dynamic> jsonList = jsonDecode(response.body);
      final allTripsData = jsonList.map((json) => TripModel.fromJson(json)).toList();
      if(kDebugMode){
        print("trip data fetched successfully : ${response.body}");
      }
      return allTripsData;
    }else{
      throw Exception('Failed to load trips: ${response.statusCode}');
    }

  }
}