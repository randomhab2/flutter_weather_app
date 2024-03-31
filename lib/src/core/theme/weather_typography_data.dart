import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class WeatherTypographyData extends Equatable {
  const WeatherTypographyData({
    this.pageTitle = const TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 34,
      letterSpacing: 0.37,
    ),
    this.extra = const TextStyle(
      fontWeight: FontWeight.w200,
      fontSize: 70,
      letterSpacing: 0.37,
    ),
    this.normal = const TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 20,
      letterSpacing: 0.38,
    ),
    this.large = const TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 24,
      letterSpacing: -0.41,
    ),
  });

  final TextStyle pageTitle;
  final TextStyle extra;
  final TextStyle normal;
  final TextStyle large;

  @override
  List<Object?> get props => [
        pageTitle,
        extra,
        normal,
        large,
      ];
}
