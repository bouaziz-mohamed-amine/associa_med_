import 'package:associa_med_app/contract/Service.dart';
import 'package:associa_med_app/contract/model.dart';
import 'package:associa_med_app/models/Answer.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get_storage/get_storage.dart';

import 'api_url/answer_api_url.dart';

class AnswerService extends Service{
  final box = GetStorage();

  @override
  Future<Model> create(Model model) async {
    Answer answer = model as Answer;
    // final headers = {'Authorization': 'Bearer $token'};
    Response response = await post(AnswerApiUrl().answerCreateUrl(), answer.toJson());
    print(response.statusCode);
    print(response.body);
    return answer;
  }

  @override
  Future<List<Model>> find() async {
    List<Answer> answers = [];
    Response response = await get(AnswerApiUrl().AnswersUrl);
    print(response.statusCode);
    for(Map<String,dynamic> answer in response.body['actions']) {
      answers.add(Answer.fromJson(answer));
    }
    print(response.body['actions']);
    return answers;
  }

  @override
  Future<Model> findOne(String id) async {
    Response response = await get(AnswerApiUrl().answerGetUrl(id));
    print(response.statusCode);
    print(response.body);
    return (Answer.fromJson(response.body["answer"]));
  }

  @override
  Future<bool> remove(String id) async {
    var response = await delete(AnswerApiUrl().answerDeleteUrl(id));
    print(response.statusCode);
    print(response.body);
    return(true);
  }

  @override
  Future<Model> update(Model model) async {
    Answer answer = model as Answer;
    var response = await put(AnswerApiUrl().answerUpdateUrl(answer.id.toString()),answer.toJson());
    print(response.statusCode);
    print(response.body);
    return(answer);
  }
}
