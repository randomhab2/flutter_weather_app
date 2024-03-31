import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_weather_app/src/common_widgets/async_value_widget.dart';
import 'package:flutter_weather_app/src/core/constants/app_images.dart';
import 'package:flutter_weather_app/src/core/routing/app_router.dart';
import 'package:flutter_weather_app/src/core/theme/theme_extension.dart';
import 'package:flutter_weather_app/src/features/home/presentation/weather_controller.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
            ),
            onPressed: () => _onNavigateToSearch(context),
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.appBackgroundImage),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Image.asset(
              AppImages.house,
              fit: BoxFit.fill,
              width: screenWidth,
            ),
          ),
          Consumer(builder: (context, ref, _) {
            final weatherState = ref.watch(weatherControllerProvider);

            return AsyncValueWidget(
                value: weatherState,
                data: (weather) {
                  final temp = '${weather.daily.temp[0]} \u00B0';
                  final wind = '${weather.daily.wind[0]} km/h';

                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          weather.cityName ?? '',
                          style: context.typography.pageTitle,
                        ),
                        Text(
                          temp,
                          style: context.typography.extra,
                        ),
                        Text(
                          'Wind speed',
                          style: TextStyle(
                            color: context.appColors.grey.withOpacity(0.6),
                          ),
                        ),
                        Text(wind),
                      ],
                    ),
                  );
                });
          }),
        ],
      ),
    );
  }

  void _onNavigateToSearch(BuildContext context) {
    context.goNamed(AppRoute.search.name);
  }
}
