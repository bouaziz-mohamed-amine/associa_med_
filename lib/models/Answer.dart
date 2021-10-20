import 'package:associa_med_app/contract/model.dart';



class Answer extends Model{
  Answer({
    required this.answer,
    required this.candidacyId,
    required this.questionId,
    this.updatedAt,
    this.createdAt,
    this.id,
  });

  String answer;
  int questionId;
  int candidacyId;
  DateTime? updatedAt;
  DateTime? createdAt;
  int? id;

  factory Answer.fromJson(Map<String, dynamic> json) => Answer(

    updatedAt: DateTime.parse(json["updated_at"]),
    createdAt: DateTime.parse(json["created_at"]),
    id: json["id"],
    answer: json["answer"],
    questionId: json["question_id"],
    candidacyId: json["candidacy_id"],
  );

  Map<String, dynamic> toJson() => {
    "answer": answer,
    "question_id":questionId,
    "candidacy_id":candidacyId,
    "updated_at": DateTime.now().toString(),
    "created_at": DateTime.now().toString(),
    "id": id,
  };
}
