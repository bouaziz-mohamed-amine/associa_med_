// To parse this JSON data, do
//
//     final action = actionFromJson(jsonString);


import 'package:associa_med_app/contract/model.dart';



class Actionned extends Model{
  Actionned({
    required this.name,
    required this.description,
    required this.startAction,
    required this.endAction,
    required this.startPublishing,
    required this.endPublishing,
    this.teamId,
    this.logo,
    this.updatedAt,
    this.createdAt,
    this.id,
  });

  String? name;
  String? description;
  DateTime startAction;
  DateTime endAction;
  DateTime startPublishing;
  DateTime endPublishing;
  int? teamId;
  String? logo;
  DateTime? updatedAt;
  DateTime? createdAt;
  int? id;

  factory Actionned.fromJson(Map<String, dynamic> json) => Actionned(
    name: json["name"],
    description: json["description"],
    startAction: DateTime.parse(json["start_action"]),
    endAction: DateTime.parse(json["end_action"]),
    startPublishing: DateTime.parse(json["start_publishing"]),
    endPublishing: DateTime.parse(json["end_publishing"]),
    teamId: json["team_id"],
    logo: json["logo"],
    updatedAt: DateTime.parse(json["updated_at"]),
    createdAt: DateTime.parse(json["created_at"]),
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "description": description.toString(),
    "start_action": startAction.toString(),
    "end_action": endAction.toString(),
    "start_publishing": startPublishing.toString(),
    "end_publishing": endPublishing.toString(),
    "team_id": teamId,
    "logo": logo,
    "updated_at": DateTime.now().toString(),
    "created_at": DateTime.now().toString(),
    "id": id,
  };
}
