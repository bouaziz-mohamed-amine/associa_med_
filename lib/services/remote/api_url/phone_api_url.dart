import 'main_api_url.dart';
class PhoneApiUrl extends MainApiUrl{
  String PhonesUrl = MainApiUrl().mainUrl +'phone/all';
  String phoneGetUrl(String id)=> mainUrl +"phone/show"+ id;
  String phoneUpdateUrl(String id) => mainUrl + "phone/update/"+ id;
  String phoneDeleteUrl(String id) => mainUrl + "phone/delete/"+ id ;
  String phoneCreateUrl() => mainUrl + "phone/create";
}