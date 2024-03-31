import 'package:json_annotation/json_annotation.dart';

part 'daily_model.g.dart';

@JsonSerializable()
class DailyModel {
  const DailyModel({
    required this.temp,
    required this.wind,
  });

  @JsonKey(name: 'temperature_2m_max')
  final List<double> temp;
  @JsonKey(name: 'wind_speed_10m_max')
  final List<double> wind;

  factory DailyModel.fromJson(Map<String, dynamic> json) =>
      _$DailyModelFromJson(json);
}
