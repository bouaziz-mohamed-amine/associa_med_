

import 'package:associa_med_app/services/remote/api/main_api.dart';

class UserApi{
  String _UsersUrl = MainApi().MainUrl +'user/all';

  String get UsersUrl => _UsersUrl;

  String  userGetUrl(String id)=> MainApi().MainUrl +"user/show/"+ id;

  String userUpdateUrl(String id) => MainApi().MainUrl + "user/update/" + id;

  String userDeleteUrl(String id) => MainApi().MainUrl + "user/delete/" + id ;



}