import 'package:flutter/material.dart';
import 'package:flutter_weather_app/src/core/theme/weather_theme_data.dart';

class WeatherTheme extends InheritedWidget {
  const WeatherTheme({
    super.key,
    required this.data,
    required super.child,
  });

  final WeatherThemeData data;

  static WeatherThemeData of(BuildContext context) {
    final widget = context.dependOnInheritedWidgetOfExactType<WeatherTheme>();
    return widget!.data;
  }

  @override
  bool updateShouldNotify(covariant WeatherTheme oldWidget) {
    return data != oldWidget.data;
  }
}
