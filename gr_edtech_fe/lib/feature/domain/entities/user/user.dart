class User {
  final int userId;
  final String username;
  final String password;
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
  final List<String>? interests;
  final bool notificationsEnabled;

  User({
    required this.userId,
    required this.username,
    required this.password,
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
    this.interests,
    required this.notificationsEnabled,
  });
}
