// To parse this JSON data, do
//
//     final action = actionFromJson(jsonString);


import 'package:associa_med_app/contract/model.dart';



class Question extends Model{
Question({
required this.question,
  required this.type,
  required this.positionId,
this.id,
  this.createdAt,
  this.updatedAt,
});
DateTime? createdAt;
DateTime? updatedAt;
String question;
String type;
int positionId;
int? id;

factory Question.fromJson(Map<String, dynamic> json) => Question(

updatedAt: DateTime.parse(json["updated_at"]),
createdAt: DateTime.parse(json["created_at"]),
id: json["id"],
  question: json["question"],
  type: json["type"],
  positionId: json["position_id"],

);

Map<String, dynamic> toJson() => {
"question": question,
  "type":type,
  "position_id": positionId,
"updated_at": DateTime.now().toString(),
"created_at": DateTime.now().toString(),
"id": id,
};
}
