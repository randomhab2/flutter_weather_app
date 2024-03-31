import 'package:dio/dio.dart';
import 'package:flutter_weather_app/src/features/home/domain/weather_model.dart';
import 'package:flutter_weather_app/src/services/endpoints.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

/// Sample usage: https://github.com/trevorwang/retrofit.dart/blob/d2cdbb41263a0d68afb020e8e99e65b1407de2b7/example/lib/example.dart
@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio) = _ApiClient;

  @GET(Endpoints.citiesUrl)
  Future<String> getCities();

  @GET(
    'https://api.open-meteo.com/v1/forecast?latitude={lat}&longitude={lon}&daily=temperature_2m_max,wind_speed_10m_max&forecast_days=1',
  )
  Future<WeatherModel> getWeather({
    @Path() required String lon,
    @Path() required String lat,
  });
}
