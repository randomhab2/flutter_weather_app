import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class WeatherColorsData extends Equatable {
  const WeatherColorsData({
    required this.themePrimaryColor,
    required this.primaryBlue,
    required this.secondaryBlue,
    required this.grey,
  });

  factory WeatherColorsData.light() => const WeatherColorsData(
        themePrimaryColor: Color(0xFFFFFFFF),
        primaryBlue: Color(0xFF2E335A),
        secondaryBlue: Color(0xFF1C1B33),
        grey: Color(0xFFEBEBF5),
      );

  final Color themePrimaryColor;
  final Color primaryBlue;
  final Color secondaryBlue;
  final Color grey;

  @override
  List<Object?> get props {
    return [
      themePrimaryColor,
      primaryBlue,
      secondaryBlue,
      grey,
    ];
  }
}
