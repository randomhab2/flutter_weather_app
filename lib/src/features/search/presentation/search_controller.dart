import 'package:flutter_weather_app/src/core/constants/fields.dart';
import 'package:flutter_weather_app/src/features/search/data/city_repository.dart';
import 'package:flutter_weather_app/src/features/search/domain/city_model.dart';
import 'package:flutter_weather_app/src/services/shared_prefs_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_controller.g.dart';

@riverpod
class SearchController extends _$SearchController {
  @override
  FutureOr<List<CityModel>?> build() async {
    return null;
  }

  FutureOr<List<CityModel>> loadCities([String? searchString]) async {
    final searchText = searchString ?? '';

    if (searchText.isNotEmpty) {
      state = const AsyncLoading();

      try {
        final cityList = await ref.read(getCitiesProvider.future);
        final filteredCities = cityList
            .where((city) =>
                city.cityName.toLowerCase().contains(searchText.toLowerCase()))
            .toList();

        state = AsyncData(filteredCities);

        return filteredCities;
      } catch (e) {
        throw Exception('Failed to filter city data: $e');
      }
    }

    return [];
  }

  void setCity(String cityName) async {
    final selectedCity =
        state.value?.firstWhere((element) => element.cityName == cityName);

    final sharedPreferences = await ref.read(sharedPrefsProvider.future);

    ///better to use hive or other db with objects option
    await sharedPreferences.setStringList(
      Fields.cityField,
      [
        selectedCity?.cityName ?? '',
        selectedCity?.lat ?? '',
        selectedCity?.lon ?? '',
      ],
    );

    ref.invalidate(sharedPrefsProvider);
  }
}
