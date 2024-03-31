// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) => WeatherModel(
      daily: DailyModel.fromJson(json['daily'] as Map<String, dynamic>),
      cityName: json['cityName'] as String?,
    );

Map<String, dynamic> _$WeatherModelToJson(WeatherModel instance) =>
    <String, dynamic>{
      'daily': instance.daily,
      'cityName': instance.cityName,
    };
