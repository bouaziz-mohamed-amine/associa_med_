
import 'main_api_url.dart';

class AuthApiUrl extends MainApiUrl{

  String registerUrl() => mainUrl + "register"  ;

  String loginUrl() => mainUrl + "login" ;

  String logoutUrl() => mainUrl + "logout" ;
}