import 'package:dio/dio.dart';

class DioConfig {
  static Dio createDio({required String baseUrl}) {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'http://localhost:3000/api/',
        headers: {
          'Content-Type': 'application/json',
        },
        receiveTimeout: const Duration(seconds: 60),
        sendTimeout: const Duration(seconds: 60),
        responseType: ResponseType.json,
      ),
    );

    /// ghi log response và request
    dio.interceptors.add(LogInterceptor(
      responseBody: true,
      requestBody: true,
    ));

    return dio;
  }
}
