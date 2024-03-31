import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_weather_app/src/core/constants/dimens.dart';
import 'package:flutter_weather_app/src/core/theme/theme_extension.dart';
import 'package:flutter_weather_app/src/features/search/presentation/search_controller.dart';
import 'package:flutter_weather_app/src/features/search/presentation/widgets/search_result.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: context.appColors.secondaryBlue,
              borderRadius: BorderRadius.circular(
                Dimens.radius20,
              ),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: Dimens.padding16,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: context.appColors.grey.withOpacity(0.6),
                ),
                const SizedBox(
                  width: Dimens.padding16,
                ),
                Consumer(builder: (context, ref, _) {
                  return Expanded(
                    child: TextField(
                      onChanged: (val) => _filterCities(val, ref),
                      decoration: InputDecoration(
                        hintText: 'Search for a city',
                        hintStyle: TextStyle(
                          color: context.appColors.grey.withOpacity(0.6),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  );
                }),
              ],
            ),
          ),
          const SearchResult()
        ],
      ),
    );
  }

  void _filterCities(
    String searchText,
    WidgetRef ref,
  ) {
    ref.read(searchControllerProvider.notifier).loadCities(searchText);
  }
}
