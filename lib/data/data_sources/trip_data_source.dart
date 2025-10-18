import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:inspired_web/core/urls/urls.dart';

import '../models/trip_model.dart';

class TripDataSource {
  /// this method will fetch all trips from the server
  Future<List<TripModel>> getAllTrips() async {
    final url = Uri.parse(Urls.baseURL);
    final response = await http.get(url);

    if (kDebugMode) {
      print("\n\n trip data fetched successfully : ${response.statusCode}");
      print("Content length: ${response.contentLength}");
      print("Content-Type: ${response.headers['content-type']}");
    }

    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);

        List<dynamic> jsonList;

        if (jsonData is List<dynamic>) {
          jsonList = jsonData;
        } else if (jsonData is Map<String, dynamic>) {
          // Common API patterns: adjust keys based on your API (e.g., 'trips', 'data')
          jsonList = jsonData['trips'] ?? jsonData['data'] ?? [];
          if (jsonList.isEmpty) {
            throw Exception(
              'No trips found in response (checked keys: trips, data)',
            );
          }
        } else {
          throw Exception(
            'Invalid JSON structure: Expected List or Map with trips/data',
          );
        }

        final allTripsData = jsonList
            .map((json) => TripModel.fromJson(json as Map<String, dynamic>))
            .toList();

        if (kDebugMode) {
          print(
            "\n\n trip data captured successfully : ${allTripsData.length}",
          );
        }

        return allTripsData;
      } catch (e) {
        if (kDebugMode) {
          print('JSON parsing error: $e');
          print('Full response body for debug: ${response.body}');
        }
        throw Exception('Failed to parse trips: $e');
      }
    } else {
      throw Exception(
        'Failed to load trips: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// this method will fetch a single trip data from the server
  Future<TripModel> getSingleTrip({required String id}) async {
    if (id.isEmpty) {
      throw Exception('Trip ID can not be empty');
    }

    final url = Uri.parse('${Urls.getSingleTrip}$id');

    try {
      final response = await http.get(url).timeout(const Duration(seconds: 10));
      debugPrint(
        '\n[GET]: $url'
        '\nStatus Code: ${response.statusCode}\n'
        "\nContent-length: ${response.contentLength}",
      );

      if (response.statusCode == 200) {
        if (response.body.isEmpty) {
          throw Exception("Empty response body");
        }

        final jsonData = jsonDecode(response.body);
        final singleTrip = TripModel.fromJson(jsonData);
        return singleTrip;
      } else {
        throw HttpException(
          "Failed to fetch trip, status code: ${response.statusCode}",
          uri: url,
        );
      }
    } on SocketException {
      throw Exception("No internet connection");
    } on TimeoutException {
      throw Exception('Request to server time out');
    } on FormatException {
      throw Exception("Invalid response format");
    } catch (e) {
      throw Exception('Unexpected error fetching trip: $e');
    }
  }
}
