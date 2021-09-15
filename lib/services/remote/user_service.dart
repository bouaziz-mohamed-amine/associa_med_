import 'package:associa_med_app/contract/Service.dart';
import 'package:associa_med_app/contract/model.dart';
import 'package:associa_med_app/models/user.dart';
import 'package:get/get_connect/http/src/response/response.dart';

import 'api_url/user_api_url.dart';

class UserService extends Service{
  @override
  Future<Model> create(Model model) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<List<Model>> find() {

    throw UnimplementedError();
  }

  Future<dynamic> getUsers() async {
    List<User> users = [] ;

    final response =await get(UserApiUrl().UsersUrl);
    print(response.body["users"]);
    if (response.hasError){
      return response.statusText;
    }else{
    for (Map<String,dynamic> user in response.body["users"])
      users.add(User.fromJson(user));

    return users;
    }


  }

  @override
  Future<User> findOne(String id)  async{

    final response =await get(UserApiUrl().userGetUrl(id));
    print(response.body["user"]);

     return User.fromJson(response.body["user"]);
      throw UnimplementedError();
  }



  @override
  Future<bool> remove(String id) async{
      Response result = await post(UserApiUrl().userDeleteUrl(id),{"id": 9});
      print(result.statusText);
      return result.hasError ;
    throw UnimplementedError();
  }

  @override
  Future<Model> update(Model model ) async{
    User user = model as User;
    await post(UserApiUrl().userUpdateUrl(user.id.toString()), user.toJson());
    print(user.toJson());
    return user;

    throw UnimplementedError();
  }





}