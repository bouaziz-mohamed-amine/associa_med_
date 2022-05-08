
import 'package:associa_med_app/routes/app_route.dart';
import 'package:associa_med_app/views/components/theme.dart';
import 'package:associa_med_app/views/pages/comite_page.dart';
import 'package:associa_med_app/views/pages/home_page.dart';
import 'package:associa_med_app/views/pages/login_page.dart';
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
    debugShowCheckedModeBanner: false,
    theme: AppTheme.appTheme,
    // It is not mandatory to use named routes, but dynamic urls are interesting.
    initialRoute: AppRoute().comitePageRoute,
    enableLog: true,
    defaultTransition: Transition.fade,
    opaqueRoute: Get.isOpaqueRouteDefault,
    popGesture: Get.isPopGestureEnable,
    // defaultTransition: Transition.native,

    getPages: [
      //Simple GetPage
      LoginPage(),
      HomePage(),
      ComitePage(),
    ],
  ));
}