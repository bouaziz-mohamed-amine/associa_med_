// To parse this JSON data, do
//
//     final position = positionFromJson(jsonString);

import 'dart:convert';

import 'package:associa_med_app/contract/model.dart';



class Position extends Model{
  Position({
    required this.id,
    required this.name,
    required this.description,
    this.rating,
    this.userId,
    required this.actionId,
    this.createdAt,
    this.updatedAt,
  });

  dynamic id;
  String name;
  String description;
  dynamic rating;
  dynamic userId;
  dynamic actionId;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory Position.fromJson(Map<String, dynamic> json) => Position(
    id: json["id"],
    name: json["name"],
    description: json["description"],
    rating: json["rating"],
    userId: json["user_id"],
    actionId: json["action_id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "description": description,
    "rating": rating,
    "user_id": userId,
    "action_id": actionId,
    "created_at": DateTime.now().toString(),
    "updated_at": DateTime.now().toString(),
  };
}
