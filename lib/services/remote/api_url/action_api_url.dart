import 'main_api_url.dart';
class ActionApiUrl extends MainApiUrl{
  String ActionsUrl = MainApiUrl().mainUrl +'action';
  String actionGetUrl(String id)=> mainUrl +"action/"+ id;
  String actionUpdateUrl(String id) => mainUrl + "action/" + id;
  String actionDeleteUrl(String id) => mainUrl + "action/"+ id ;
  String actionCreateUrl() => mainUrl + "action/";

}