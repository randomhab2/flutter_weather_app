import 'package:flutter/material.dart';
import 'package:flutter_weather_app/src/core/constants/dimens.dart';
import 'package:flutter_weather_app/src/core/theme/theme_extension.dart';
import 'package:flutter_weather_app/src/features/search/presentation/widgets/search_field.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final topSpace = mediaQuery.padding.top + kToolbarHeight;
    const gradientStart = 0.0;
    const gradientEnd = 1.0;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        height: screenHeight,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              context.appColors.primaryBlue,
              context.appColors.secondaryBlue,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [gradientStart, gradientEnd],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Dimens.padding16,
          ),
          child: Column(
            children: [
              SizedBox(
                height: topSpace,
              ),
              const SearchField(),
            ],
          ),
        ),
      ),
    );
  }
}
