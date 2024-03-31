import 'package:flutter/material.dart';
import 'package:flutter_weather_app/src/core/constants/dimens.dart';
import 'package:flutter_weather_app/src/core/theme/theme_extension.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({
    super.key,
    required this.cityName,
    required this.onSelectCity,
  });

  final String cityName;
  final Function() onSelectCity;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.appColors.secondaryBlue,
        borderRadius: BorderRadius.circular(
          Dimens.radius20,
        ),
      ),
      child: ListTile(
        tileColor: context.appColors.secondaryBlue,
        contentPadding: const EdgeInsets.all(Dimens.padding16),
        title: Text(
          cityName,
          style: context.typography.pageTitle.copyWith(
            color: context.appColors.themePrimaryColor,
          ),
        ),
        onTap: onSelectCity,
      ),
    );
  }
}
