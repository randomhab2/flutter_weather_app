import 'package:flutter_weather_app/src/features/home/presentation/home_screen.dart';
import 'package:flutter_weather_app/src/features/search/presentation/search_screen.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  home,
  search,
}

final goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: AppRoute.home.name,
      builder: (context, state) => const HomeScreen(),
      routes: [
        GoRoute(
          path: AppRoute.search.name,
          name: AppRoute.search.name,
          builder: (context, state) => const SearchScreen(),
        ),
      ],
    ),
  ],
);
