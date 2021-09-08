import 'package:associa_med_app/contract/Service.dart';
import 'package:associa_med_app/contract/model.dart';
import 'package:associa_med_app/models/user.dart';
import 'package:get/get_connect/http/src/response/response.dart';

class UserService extends Service{
  @override
  Future<Model> create(Map<String, dynamic> data) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<List<Model>> find() {

    throw UnimplementedError();
  }

  Future<Map<String,dynamic>> getUser() async {
    List<User> users = [] ;

    final response =await get('http://127.0.0.1:8000/api/user/all');
    print(response.body["users"]);
    for (Map<String,dynamic> user in response.body["users"])
      users.add(User.fromJson(user));
    print(users);


    return response.body;
  }


  @override
  Future<Model> findOne(String id) {
    // TODO: implement findOne
    throw UnimplementedError();
  }

  @override
  Future<bool> remove(String id) {
    // TODO: implement remove
    throw UnimplementedError();
  }

  @override
  Future<Model> update(Model model) {
    // TODO: implement update
    throw UnimplementedError();
  }

}