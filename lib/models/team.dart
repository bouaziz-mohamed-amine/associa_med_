import 'dart:convert';

import 'package:associa_med_app/contract/model.dart';

class Team extends Model{
  Team({
    this.id,
    required this.name,
    required this.abbreviation,
    required this.logo,
    this.createdAt,
    this.updatedAt,
    this.users,
  });

  int? id;
  String name;
  String abbreviation;
  String logo;
  DateTime? createdAt;
  DateTime? updatedAt;
  List<dynamic>? users;

  factory Team.fromJson(Map<String, dynamic> json) => Team(
    id: json["id"],
    name: json["name"],
    abbreviation: json["abbreviation"],
    logo: json["logo"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    //users: List<dynamic>.from(json["users"].map!((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "abbreviation": abbreviation,
    "logo": logo,
    "created_at": createdAt.toString(),
    "updated_at": updatedAt.toString(),
    // "users": List<dynamic>.from(users!.map((x) => x)),
  };
}
