import 'main_api_url.dart';
class AnswerApiUrl extends MainApiUrl{
  String AnswersUrl = MainApiUrl().mainUrl +'answer';
  String answerGetUrl(String id)=> mainUrl +"answer/"+ id;
  String answerUpdateUrl(String id) => mainUrl + "answer" + id;
  String answerDeleteUrl(String id) => mainUrl + "answer"+ id ;
  String answerCreateUrl() => mainUrl + "answer";

}