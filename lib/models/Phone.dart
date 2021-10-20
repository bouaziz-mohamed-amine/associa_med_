// To parse this JSON data, do
//
//     final action = actionFromJson(jsonString);


import 'package:associa_med_app/contract/model.dart';



class Phone extends Model{
  Phone({
    required this.number,
    this.userId,
    this.id,
    this.createdAt,
    this.updatedAt,
  });
  int? id;
  int number;
  int? userId;
  DateTime? updatedAt;
  DateTime? createdAt;

  factory Phone.fromJson(Map<String, dynamic> json) => Phone(
    number: json["number"],
    userId: json["user_id"],
    updatedAt: DateTime.parse(json["updated_at"]),
    createdAt: DateTime.parse(json["created_at"]),
  );

  Map<String, dynamic> toJson() => {
    "number": number,
    "user_id": userId,
    "updated_at": DateTime.now().toString(),
    "created_at": DateTime.now().toString(),
  };
}
