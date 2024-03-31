import 'package:flutter_weather_app/src/features/home/domain/weather_model.dart';
import 'package:flutter_weather_app/src/services/api_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_repository.g.dart';

@riverpod
FutureOr<WeatherModel> getWeather(
    GetWeatherRef ref, String lat, String lon) async {
  try {
    final weather = await ref.read(apiServiceProvider).getWeather(
          lat: lat,
          lon: lon,
        );

    return weather;
  } catch (e) {
    throw Exception('Failed to load weather data: $e');
  }
}
