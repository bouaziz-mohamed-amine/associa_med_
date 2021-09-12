import 'dart:html';

import 'package:associa_med_app/contract/controller.dart';
import 'package:associa_med_app/models/user.dart';
import 'package:associa_med_app/services/remote/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class AuthController extends Controller{
  AuthService _authService = AuthService();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  Color _yellowColor = Color(0xFFF7C41C);
  var _key = GlobalKey<FormState>();
  final box = GetStorage();

  get key => _key;

  Color get yellowColor => _yellowColor;

  AuthService get authService => _authService;

  TextEditingController get emailController => _emailController;

  TextEditingController get passwordController => _passwordController;

  Future<User> login ( ) async{
     print(emailController.text);
     print(passwordController.text);
     User user = await authService.login(emailController.text, passwordController.text);
     print(user);

     // box.write("current_user", user.toJson());
     // print(box.read("current_user"));

     return user;
  }

  Future<void> register() async{
    User user = User(firstName: "dad", lastName: "dad", email: emailController.text, password: passwordController.text);
    await authService.register(user);
  }
}