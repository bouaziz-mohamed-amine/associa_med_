import 'dart:convert';

import 'package:associa_med_app/contract/model.dart';
import 'package:associa_med_app/models/actionned.dart';
import 'package:associa_med_app/services/remote/action_service.dart';

class Team extends Model{

  int? id;
  String ?name;
  String ?abbreviation;
  String ?description ;
  String ?logo;
  DateTime? createdAt;
  DateTime? updatedAt;
  List<dynamic>? users;
  List<Actionned> ?actions ;
  Team({
    this.id,
    this.name,
    this.abbreviation,
    this.description,
    this.logo,
    this.createdAt,
    this.updatedAt,
    this.users,
    this.actions
  });
  factory Team.fromJson(Map<String, dynamic> json) => Team(
    id: json["id"],
    name: json["name"],
    abbreviation: json["abbreviation"],
    description: json["description"],
    logo: json["logo"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    actions: List<Actionned>.from(json["actions"].map((x) => Actionned.fromJson(x))),
    //users: List<dynamic>.from(json["users"].map!((x) => x)),
  );
  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "abbreviation": abbreviation,
    "description" : description,
    "logo": logo,
    "created_at": createdAt.toString(),
    "updated_at": updatedAt.toString(),
    // "users": List<dynamic>.from(users!.map((x) => x)),
  };

}
