import 'package:associa_med_app/contract/controller.dart';
import 'package:associa_med_app/models/user.dart';
import 'package:associa_med_app/services/remote/auth_service.dart';
import 'package:associa_med_app/services/remote/user_service.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_notifier.dart';
import 'package:get_storage/get_storage.dart';

class UserController extends Controller with StateMixin<User>{
  final box = GetStorage();
  final _userService = UserService();






  User getCurrentUser(){
    User user = User.fromJson(box.read("current_user"));
    print(user.email);
    return user;
  }

  Future<void> logout ()async{
    AuthService authService = AuthService();
    authService.logout();
  }



  @override
  void onReady() async{
    try{
      change(null, status: RxStatus.loading());
      final user = await _userService.findOne("30");
      if (user == ""){
        change(user,  status: RxStatus.empty());
      }else{
        change(user, status: RxStatus.success());
      }
    }catch (error){
      change(null, status: RxStatus.error("$error"));
    }
    super.onReady();
  }





}