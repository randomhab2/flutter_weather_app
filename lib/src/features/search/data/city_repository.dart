import 'dart:convert';

import 'package:flutter_weather_app/src/services/api_service.dart';
import 'package:flutter_weather_app/src/features/search/domain/city_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'city_repository.g.dart';

@riverpod
FutureOr<List<CityModel>> getCities(GetCitiesRef ref) async {
  try {
    final citiesString = await ref.read(apiServiceProvider).getCities();
    final jsonData = jsonDecode(citiesString);

    final List<CityModel> cities = (jsonData as List<dynamic>)
        .map((json) => CityModel.fromJson(json))
        .toList();

    return cities;
  } catch (e) {
    throw Exception('Failed to load city data: $e');
  }
}
