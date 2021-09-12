import 'dart:ui';
import 'package:associa_med_app/models/user.dart';
import 'package:associa_med_app/routes/app_route.dart';
import 'package:associa_med_app/services/remote/auth_service.dart';
import 'package:associa_med_app/services/remote/user_service.dart';
import 'package:associa_med_app/views/pages/home_page.dart';
import 'package:associa_med_app/views/pages/login_page.dart';
import 'package:associa_med_app/views/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async{
  await GetStorage.init();
  final box = GetStorage();
  // User user = box.read("current_user");
  // print(user);
  // print(user.firstName);


  runApp(GetMaterialApp(
    // It is not mandatory to use named routes, but dynamic urls are interesting.
    initialRoute: AppRoute().loginRoute,
    enableLog: true,
    defaultTransition: Transition.fade,
    opaqueRoute: Get.isOpaqueRouteDefault,
    popGesture: Get.isPopGestureEnable,
    // defaultTransition: Transition.native,

    getPages: [
      //Simple GetPage
      LoginPage(),
      HomePage(),
      RegisterPage()

    ],
  ));
}