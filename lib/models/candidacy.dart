// To parse this JSON data, do
//
//     final candidacy = candidacyFromJson(jsonString);

import 'dart:convert';

import 'package:associa_med_app/contract/model.dart';
//import 'package:intl/intl.dart';

class Candidacy extends Model{
  Candidacy({
    this.id,
    this.userId,
    this.positionId,
    this.created,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  int? userId;
  int? positionId;
  DateTime? created;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory Candidacy.fromJson(Map<String, dynamic> json) => Candidacy(
    id: json["id"],
    userId: json["user_id"],
    positionId: json["position_id"],
    created: DateTime.parse(json["created"]),
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_id": userId,
    "position_id": positionId,
    "created": DateTime.now().toString(),
    "created_at": DateTime.now().toString(),
    "updated_at": DateTime.now().toString(),
  };
}
