import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_weather_app/src/features/home/domain/daily_model.dart';

part 'weather_model.g.dart';

@JsonSerializable()
class WeatherModel {
  const WeatherModel({
    required this.daily,
    this.cityName,
  });

  final DailyModel daily;
  final String? cityName;

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);

  WeatherModel copyWith({
    DailyModel? daily,
    String? cityName,
  }) {
    return WeatherModel(
      daily: daily ?? this.daily,
      cityName: cityName ?? this.cityName,
    );
  }
}
