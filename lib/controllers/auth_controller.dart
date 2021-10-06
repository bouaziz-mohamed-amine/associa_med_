import 'dart:html';

import 'package:associa_med_app/contract/controller.dart';
import 'package:associa_med_app/models/user.dart';
import 'package:associa_med_app/routes/app_route.dart';
import 'package:associa_med_app/services/remote/auth_service.dart';
import 'package:associa_med_app/services/remote/user_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:connectivity/connectivity.dart';


class AuthController extends Controller with StateMixin<User>{
  AuthService _authService = AuthService();
  var connectivityResult =  (Connectivity().checkConnectivity()).obs;


  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _cinNumberController = TextEditingController();
  Color _yellowColor = Color(0xFFF7C41C);
  var _key = GlobalKey<FormState>();
  final box = GetStorage();
  final _userService= UserService();
  get key => _key;

  TextEditingController get firstNameController => _firstNameController;

  Color get yellowColor => _yellowColor;

  AuthService get authService => _authService;

  TextEditingController get emailController => _emailController;

  TextEditingController get passwordController => _passwordController;

  TextEditingController get lastNameController => _lastNameController;

  TextEditingController get cinNumberController => _cinNumberController;


  Future<dynamic> login() async {
    print(emailController.text);
    print(passwordController.text);
    User user = await authService.login(
        emailController.text, passwordController.text);
    print(user);
    if (box.read("token") != null) {
      Get.offNamed(AppRoute().homePageRoute);

      // box.write("current_user", user.toJson());
      // print(box.read("current_user"));

          ;
    }
  }

  Future<void> logout() async {
    await authService.logout();
  }

  Future<dynamic> register() async {
    User user = User(firstName: firstNameController.text,
        lastName: lastNameController.text,
        cin: cinNumberController.text,
        email: emailController.text,
        password: passwordController.text);
    await authService.register(user);
    if (box.read("token") != null) {
      Get.offNamed(AppRoute().homePageRoute);
    }

  }

  // ToDo : login with token
  @override
  Future<void> onReady() async {
    try{
      change(null, status: RxStatus.loading());


      final user = await _userService.findOne("3000");
      if (user == ""){
        change(user,  status: RxStatus.empty());
      }else{
        change(user, status: RxStatus.success());
      }
    }catch (error){
      change(null, status: RxStatus.error("$error"));
    }

    checkStatus();
    super.onReady();
  }
// ToDo : verify connection to the server

  String checkStatus()  {
    String result;

    if (connectivityResult == ConnectivityResult.mobile) {
      result = "Connected to Mobile Network";

    } else if (connectivityResult == ConnectivityResult.wifi) {
      result = "Connected to WiFi";
      print("Connected to WiFi");
    } else {
      result = "Unable to connect. Please Check Internet Connection";
    }
    return result;
  }


}