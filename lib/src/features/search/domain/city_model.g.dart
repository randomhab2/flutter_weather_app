// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CityModel _$CityModelFromJson(Map<String, dynamic> json) => CityModel(
      cityName: json['city'] as String,
      lat: json['lat'] as String,
      lon: json['lng'] as String,
    );

Map<String, dynamic> _$CityModelToJson(CityModel instance) => <String, dynamic>{
      'city': instance.cityName,
      'lat': instance.lat,
      'lng': instance.lon,
    };
