import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '../configs/constants/app_constants.dart';

class DioConfig {
  static final DioConfig _instance = DioConfig._internal();
  late final Dio _dio;

  factory DioConfig() {
    return _instance;
  }

  DioConfig._internal() {
    _dio = _createDio();
  }

  static Dio getDioInstance() {
    return DioConfig()._dio;
  }

  Dio _createDio() {
    final dio = Dio(
      BaseOptions(
        baseUrl: AppConstant.baseUrl,
        headers: {
          'Content-Type': 'application/json',
        },
        receiveTimeout: const Duration(seconds: 60),
        sendTimeout: const Duration(seconds: 60),
        responseType: ResponseType.json,
      ),
    );

    if (kDebugMode) {
      dio.interceptors.add(LogInterceptor(
        responseBody: true,
        requestBody: true,
      ));
    }

    return dio;
  }
}
