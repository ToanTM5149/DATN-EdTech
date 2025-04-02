import 'package:flutter/foundation.dart';

class AppConstant {
  static const String appTitle = 'RETA';
  static const String secretKey = "khongNgungCoGang";
  static const String baseUrl =
      kDebugMode ? "http://10.0.2.2:3000/api/" : "http://localhost:3000/api/";
}
