import 'package:flutter/material.dart';
import 'package:flutter_weather_app/src/core/theme/weather_colors_data.dart';
import 'package:flutter_weather_app/src/core/theme/weather_theme.dart';
import 'package:flutter_weather_app/src/core/theme/weather_typography_data.dart';

extension ThemeExtension on BuildContext {
  WeatherColorsData get appColors => WeatherTheme.of(this).themeColors;
  WeatherTypographyData get typography => WeatherTheme.of(this).typography;
}
