class AppValidator {
  static const String _validateEmail =
      r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$";
  static final RegExp expEmail = RegExp(_validateEmail);

  static const String _validatePhone = r"^(?:[+0]9)?[0-9]{10,12}$";
  static final RegExp expPhone = RegExp(_validatePhone);

  bool isEmailValid(String email) {
    return expEmail.hasMatch(email);
  }

  bool isPhoneValid(String phone) {
    return expPhone.hasMatch(phone);
  }

  bool isNullEmpty(Object? o) {
    if (o == null) return true;
    if (o is String && o.trim().isEmpty) return true;
    if (o is List && o.isEmpty) return true;
    if (o is Map && o.isEmpty) return true;
    return false;
  }

  bool isLengthValid(String? value, int minLength, int maxLength) {
    if (value == null || value.isEmpty) return false;
    return value.length >= minLength && value.length <= maxLength;
  }
}
