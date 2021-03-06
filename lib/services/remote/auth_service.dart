import 'package:associa_med_app/contract/model.dart';
import 'package:associa_med_app/exception/exception.dart';
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
    box.write("current_user", user.toJson());
    return User.fromJson(response.body["user"]);
}
 Future<User> login(String email , String password) async{

   Response response = await post(AuthApi().loginUrl(),{"email": email, "password": password});
   switch (response.statusCode){
     case 200:
     case 201:
     box.write("token", response.body["token"]);
     box.write("current_user", response.body["user"]);

     var user = User.fromJson(response.body["user"]);

     return user ;
     default:
       throw LoginFailed();
   }



 }

 Future<void> logout()async {
   String token = box.read("token");

   final headers = {'Authorization': 'Bearer $token'};
   Response response = await post(AuthApi().logoutUrl(), null,headers: headers );
   box.remove("token");
   print(response.body);
 }
}