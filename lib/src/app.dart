import 'package:flutter/material.dart';
import 'package:flutter_weather_app/src/core/routing/app_router.dart';
import 'package:flutter_weather_app/src/core/theme/app_theme.dart';
import 'package:flutter_weather_app/src/core/theme/weather_theme.dart';
import 'package:flutter_weather_app/src/core/theme/weather_theme_data.dart';
import 'package:flutter_weather_app/src/core/theme/weather_typography_data.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    const weatherThemeData = WeatherThemeData(
      typography: WeatherTypographyData(),
    );

    return WeatherTheme(
      data: weatherThemeData,
      child: MaterialApp.router(
        routerConfig: goRouter,
        title: "Weather",
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
      ),
    );
  }
}
