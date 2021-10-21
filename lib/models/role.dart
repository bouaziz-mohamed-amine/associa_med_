import 'dart:convert';

import 'package:associa_med_app/contract/model.dart';


class Role extends Model {
  Role({
    this.id,
    required this.role,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String role;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory Role.fromJson(Map<String, dynamic> json) => Role(
    id: json["id"],
    role: json["role"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "role": role,
    "created_at": createdAt.toString(),
    "updated_at": updatedAt.toString(),
  };
}