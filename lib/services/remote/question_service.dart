import 'package:associa_med_app/contract/model.dart';
import 'package:associa_med_app/contract/service.dart';
import 'package:associa_med_app/models/Question.dart';
import 'package:get/get_connect/http/src/response/response.dart';

import 'api_url/question_api_url.dart';

class QuestionService extends Service{
  @override
  Future<Model> create(Model model) async {
    Question question = model as Question;
    // final headers = {'Authorization': 'Bearer $token'};
    Response response = await post(QuestionApiUrl().questionCreateUrl(), question.toJson());
    print(response.statusCode);
    print(response.body);
    return question;
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<List<Model>> find() async {
    List<Question> questions = [];
    // // String token = box.read("token");
    // //
    // // final headers = {'Authorization': 'Bearer $token'};
    var response = await get(QuestionApiUrl().QuestionsUrl);
    print(response.statusCode);
    for(Map<String,dynamic> question in response.body['questions']) {
      questions.add(Question.fromJson(question));
    }
    print(response.body['questions']);
    print(response.body);
    return questions;
    // TODO: implement find
    throw UnimplementedError();
  }

  @override
  Future<Model> findOne(String id) async {
    Response response = await get(QuestionApiUrl().questionGetUrl(id));
    print(response.statusCode);
    print(response.body);
    return (Question.fromJson(response.body["question"]));
    // TODO: implement findOne
    throw UnimplementedError();
  }

  @override
  Future<bool> remove(String id) async {
    var response = await delete(QuestionApiUrl().questionDeleteUrl(id));
    print(response.statusCode);
    print(response.body);
    return(true);
  }

  @override
  Future<Model> update(Model model) async {
    Question question = model as Question;
    var response = await put(QuestionApiUrl().questionUpdateUrl(question.id.toString()),question.toJson());
    print(response.statusCode);
    print(response.body);
    return(question);
  }
}