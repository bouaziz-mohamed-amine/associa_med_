import 'package:associa_med_app/contract/model.dart';
import 'package:associa_med_app/models/user.dart';
import 'package:associa_med_app/services/remote/api/auth_api.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthService extends GetConnect {
  final box = GetStorage();

  Future<User> register(User user ) async{


    Response response = await post(AuthApi().registerUrl() , user.toJson());
   print (user.email);
   print(user.toJson());
    box.write("token", response.body["token"]);
    return User.fromJson(response.body["user"]);
}
 Future<User> login(String email , String password) async{

   Response response = await post(AuthApi().loginUrl(),{"email": email, "password": password});

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