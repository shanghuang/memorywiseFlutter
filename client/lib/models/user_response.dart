// To parse this JSON data, do
//
//     final userResponse = userResponseFromJson(jsonString);

import 'dart:convert';

UserResponse userResponseFromJson(String str) => UserResponse.fromJson(json.decode(str));

String userResponseToJson(UserResponse data) => json.encode(data.toJson());

class UserResponse {
  UserResponse({
    required this.userName,
    required this.id,
    required this.email,
    required this.token,
    this.bio,
  });

  String userName;
  String id;
  String email;
  String token;
  dynamic bio;

  factory UserResponse.fromJson(Map<String, dynamic> json) => UserResponse(
    userName: json["user_name"],
    id: json["id"],
    email: json["email"],
    token: json["token"],
    bio: json["bio"],
  );

  Map<String, dynamic> toJson() => {
    "user_name": userName,
    "id": id,
    "email": email,
    "token": token,
    "bio": bio,
  };
}
