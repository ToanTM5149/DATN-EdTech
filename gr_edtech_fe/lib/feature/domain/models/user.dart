import 'dart:convert';

class User {
  final int userId;
  final String username;
  final String fullName;
  final String email;
  final String role;
  final String phoneNumber;
  final String? address;
  final String? city;
  final String? country;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String? profilePicture;
  final List<String> interests;
  final bool notificationsEnabled;

  User({
    required this.userId,
    required this.username,
    required this.fullName,
    required this.email,
    required this.role,
    required this.phoneNumber,
    this.address,
    this.city,
    this.country,
    required this.createdAt,
    required this.updatedAt,
    this.profilePicture,
    required this.interests,
    required this.notificationsEnabled,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userId: json['user_id'],
      username: json['username'],
      fullName: json['full_name'],
      email: json['email'],
      role: json['role'],
      phoneNumber: json['phone_number'],
      address: json['address'],
      city: json['city'],
      country: json['country'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
      profilePicture: json['profile_picture'],
      interests: List<String>.from(jsonDecode(json['interests'])),
      notificationsEnabled: json['notifications_enabled'],
    );
  }
}
