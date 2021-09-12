import 'package:associa_med_app/contract/controller.dart';
import 'package:associa_med_app/models/user.dart';
import 'package:associa_med_app/services/remote/auth_service.dart';
import 'package:associa_med_app/services/remote/user_service.dart';
import 'package:get_storage/get_storage.dart';

class UserController extends Controller{
  final box = GetStorage();

  UserService _userService = UserService();

  User getCurrentUser(){
    User user = User.fromJson(box.read("current_user"));
    print(user.email);
    return user;
  }

  Future<void> logout ()async{
    AuthService authService = AuthService();
    authService.logout();
  }



}