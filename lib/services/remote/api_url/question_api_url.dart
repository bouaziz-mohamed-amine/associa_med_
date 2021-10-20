import 'main_api_url.dart';
class QuestionApiUrl extends MainApiUrl{
  String QuestionsUrl = MainApiUrl().mainUrl +'question';
  String questionGetUrl(String id)=> mainUrl +"question/"+ id;
  String questionUpdateUrl(String id) => mainUrl + "question" + id;
  String questionDeleteUrl(String id) => mainUrl + "question"+ id ;
  String questionCreateUrl() => mainUrl + "question";

}