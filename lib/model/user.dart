import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';

// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

AppUser userFromJson(String str) {
  final jsonData = json.decode(str);
  return AppUser.fromJson(jsonData);
}

String userToJson(AppUser data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

class AppUser {
  String userId;
  String firstName;
  String lastName;
  String email;

  AppUser({
    this.userId,
    this.firstName,
    this.lastName,
    this.email,
  });

  factory AppUser.fromJson(Map<String, dynamic> json) => new AppUser(
    userId: json["userId"],
    firstName: json["firstName"],
    lastName: json["lastName"],
    email: json["email"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "firstName": firstName,
    "lastName": lastName,
    "email": email,
  };

  factory AppUser.fromDocument(DocumentSnapshot doc) {
    return AppUser.fromJson(doc.data());
  }
}