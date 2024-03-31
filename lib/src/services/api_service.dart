import 'package:dio/dio.dart';
import 'package:flutter_weather_app/src/services/api_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_service.g.dart';

@riverpod
ApiClient apiService(ApiServiceRef ref) => ApiClient(
      Dio(
        BaseOptions(
          contentType: 'application/json',
        ),
      ),
    );
