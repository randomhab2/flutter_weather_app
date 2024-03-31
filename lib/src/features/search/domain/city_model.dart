import 'package:json_annotation/json_annotation.dart';

part 'city_model.g.dart';

@JsonSerializable()
class CityModel {
  const CityModel({
    required this.cityName,
    required this.lat,
    required this.lon,
  });

  @JsonKey(name: 'city')
  final String cityName;
  final String lat;
  @JsonKey(name: 'lng')
  final String lon;

  factory CityModel.fromJson(Map<String, dynamic> json) =>
      _$CityModelFromJson(json);
}
