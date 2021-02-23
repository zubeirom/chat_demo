import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:convert';
// To parse this JSON data, do
//
//     final settings = settingsFromJson(jsonString);

AppSettings settingsFromJson(String str) {
  final jsonData = json.decode(str);
  return AppSettings.fromJson(jsonData);
}

String settingsToJson(AppSettings data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

class AppSettings {
  String settingsId;

  AppSettings({
    this.settingsId,
  });

  factory AppSettings.fromJson(Map<String, dynamic> json) => new AppSettings(
    settingsId: json["settingsId"],
  );

  Map<String, dynamic> toJson() => {
    "settingsId": settingsId,
  };

  factory AppSettings.fromDocument(DocumentSnapshot doc) {
    return AppSettings.fromJson(doc.data());
  }
}