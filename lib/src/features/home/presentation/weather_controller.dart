import 'package:flutter_weather_app/src/core/constants/fields.dart';
import 'package:flutter_weather_app/src/features/home/data/weather_repository.dart';
import 'package:flutter_weather_app/src/features/home/domain/weather_model.dart';
import 'package:flutter_weather_app/src/services/shared_prefs_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_controller.g.dart';

@riverpod
class WeatherController extends _$WeatherController {
  @override
  FutureOr<WeatherModel> build() async {
    return _init();
  }

  Future<WeatherModel> _init() async {
    final sharedPreferences = await ref.watch(sharedPrefsProvider.future);

    ///better to use hive or other db with objects option
    final List<String> savedCity =
        sharedPreferences.getStringList(Fields.cityField) ??
            ['Kyiv', '50', '30'];

    WeatherModel weather = await ref.read(getWeatherProvider(
      savedCity[1],
      savedCity[2],
    ).future);

    weather = weather.copyWith(cityName: savedCity[0]);

    return weather;
  }
}
