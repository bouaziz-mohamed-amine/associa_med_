

import 'package:associa_med_app/services/remote/api/main_api.dart';

class UserApi extends MainApi{
  String _UsersUrl = MainApi().mainUrl +'user/all';

  String get UsersUrl => _UsersUrl;

  String  userGetUrl(String id)=> mainUrl +"user/show/"+ id;

  String userUpdateUrl(String id) => mainUrl + "user/update/" + id;

  String userDeleteUrl(String id) => mainUrl + "user/delete/" + id ;



}