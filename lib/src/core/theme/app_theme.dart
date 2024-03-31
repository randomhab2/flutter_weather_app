import 'package:flutter/material.dart';
import 'package:flutter_weather_app/src/core/theme/weather_colors_data.dart';
import 'package:flutter_weather_app/src/core/theme/weather_typography_data.dart';

const typography = WeatherTypographyData();

final lightColors = WeatherColorsData.light();

const fontFamily = 'Roboto';

///need to be replaced. SF Compact is not free font

final ThemeData parentTheme = ThemeData(
  useMaterial3: true,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);

final ThemeData lightTheme = parentTheme.copyWith(
  colorScheme: ColorScheme.fromSeed(seedColor: lightColors.themePrimaryColor),
  brightness: Brightness.light,
  iconButtonTheme: IconButtonThemeData(
    style: _iconButtonStyleLight,
  ),
  textTheme: parentTheme.textTheme
      .apply(
        bodyColor: lightColors.themePrimaryColor,
        fontFamily: fontFamily,
      )
      .copyWith(
        bodyMedium: typography.normal,
      ),
);

final _iconButtonStyleLight = ElevatedButton.styleFrom(
  foregroundColor: lightColors.themePrimaryColor,
);
