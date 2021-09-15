


import 'main_api_url.dart';

class UserApiUrl extends MainApiUrl{
  String _UsersUrl = MainApiUrl().mainUrl +'user/all';

  String get UsersUrl => _UsersUrl;

  String  userGetUrl(String id)=> mainUrl +"user/show/"+ id;

  String userUpdateUrl(String id) => mainUrl + "user/update/" + id;

  String userDeleteUrl(String id) => mainUrl + "user/delete/" + id ;



}