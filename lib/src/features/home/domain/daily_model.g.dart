// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DailyModel _$DailyModelFromJson(Map<String, dynamic> json) => DailyModel(
      temp: (json['temperature_2m_max'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      wind: (json['wind_speed_10m_max'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$DailyModelToJson(DailyModel instance) =>
    <String, dynamic>{
      'temperature_2m_max': instance.temp,
      'wind_speed_10m_max': instance.wind,
    };
