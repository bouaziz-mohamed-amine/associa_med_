import 'package:associa_med_app/contract/model.dart';
import 'package:associa_med_app/models/user.dart';
import 'package:associa_med_app/services/remote/api/auth_api.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthService extends GetConnect {
 Future<User> register(User user ) async{
    final box = GetStorage();

   print (user.email);
   print(user.toJson());
    Response response = await post(AuthApi().registerUrl() , user.toJson());
    box.write("token", response.body["token"]);
    return User.fromJson(response.body["user"]);
}
 // Future<User> login(){
 //   return
 // }
}