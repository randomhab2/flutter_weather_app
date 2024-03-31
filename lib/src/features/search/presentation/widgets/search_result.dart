import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_weather_app/src/common_widgets/async_value_widget.dart';
import 'package:flutter_weather_app/src/common_widgets/empty_placeholder_widget.dart';
import 'package:flutter_weather_app/src/core/constants/dimens.dart';
import 'package:flutter_weather_app/src/features/search/presentation/search_controller.dart';
import 'package:flutter_weather_app/src/features/search/presentation/widgets/search_item.dart';
import 'package:go_router/go_router.dart';

class SearchResult extends ConsumerStatefulWidget {
  const SearchResult({super.key});

  @override
  ConsumerState<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends ConsumerState<SearchResult> {
  @override
  Widget build(BuildContext context) {
    final citiesState = ref.watch(searchControllerProvider);

    return AsyncValueWidget(
        value: citiesState,
        data: (cities) {
          if (cities == null) {
            return const SizedBox();
          }

          return cities.isEmpty
              ? const EmptyPlaceholderWidget(
                  message: 'Nothing found',
                )
              : Expanded(
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(
                      vertical: Dimens.padding12,
                    ),
                    itemCount: cities.length,
                    itemBuilder: (context, index) {
                      final city = cities[index];
                      return SearchItem(
                        cityName: city.cityName,
                        onSelectCity: () => _selectCity(
                          cityName: city.cityName,
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: Dimens.padding16,
                      );
                    },
                  ),
                );
        });
  }

  void _selectCity({
    required String cityName,
  }) async {
    ref.read(searchControllerProvider.notifier).setCity(cityName);

    if (context.mounted) {
      context.pop();
    }
  }
}
