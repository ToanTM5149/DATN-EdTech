// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) => UserResponse(
      userId: (json['user_id'] as num).toInt(),
      username: json['username'] as String,
      password: json['password'] as String,
      fullName: json['full_name'] as String,
      email: json['email'] as String,
      role: json['role'] as String,
      phoneNumber: json['phone_number'] as String,
      address: json['address'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      profilePicture: json['profile_picture'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      notificationsEnabled: json['notifications_enabled'] as bool,
    );

Map<String, dynamic> _$UserResponseToJson(UserResponse instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'username': instance.username,
      'password': instance.password,
      'full_name': instance.fullName,
      'email': instance.email,
      'role': instance.role,
      'phone_number': instance.phoneNumber,
      'address': instance.address,
      'city': instance.city,
      'country': instance.country,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'profile_picture': instance.profilePicture,
      'interests': instance.interests,
      'notifications_enabled': instance.notificationsEnabled,
    };
