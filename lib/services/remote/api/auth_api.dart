import 'package:associa_med_app/services/remote/api/main_api.dart';

class AuthApi extends MainApi{

  String registerUrl() => mainUrl + "register"  ;

  String loginUrl() => mainUrl + "login" ;

  String logoutUrl() => mainUrl + "logout" ;
}