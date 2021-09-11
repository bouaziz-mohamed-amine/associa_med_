import 'package:associa_med_app/contract/model.dart';
import 'package:associa_med_app/models/user.dart';
import 'package:associa_med_app/services/remote/api/auth_api.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthService extends GetConnect {
  final box = GetStorage();

  Future<User> register(User user ) async{

   print (user.email);
   print(user.toJson());
    Response response = await post(AuthApi().registerUrl() , user.toJson());
    box.write("token", response.body["token"]);
    return User.fromJson(response.body["user"]);
}
 Future<User> login(User user) async{
   Response response = await post(AuthApi().loginUrl(),{"email": user.email, "password": user.password});
   box.write("token", response.body["token"]);
   return User.fromJson(response.body["user"]);
 }

 Future<void> logout()async {
   String token = box.read("token");

   final headers = {'Authorization': 'Bearer $token'};
   Response response = await post(AuthApi().logoutUrl(), null,headers: headers );
   print(response.body);
 }
}