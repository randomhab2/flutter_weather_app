import 'package:equatable/equatable.dart';
import 'package:flutter_weather_app/src/core/theme/weather_colors_data.dart';
import 'package:flutter_weather_app/src/core/theme/weather_typography_data.dart';

class WeatherThemeData extends Equatable {
  const WeatherThemeData({
    required this.typography,
  });

  final WeatherTypographyData typography;

  WeatherColorsData get themeColors => WeatherColorsData.light();

  @override
  List<Object?> get props => [typography];
}
