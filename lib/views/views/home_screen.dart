import 'package:associa_med_app/controllers/user_controller.dart';
import 'package:associa_med_app/routes/app_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<UserController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        child: Column(
          children: [
            Text(            controller.getCurrentUser().email
            ),
            ElevatedButton(
                onPressed: (){
                  controller.logout();
                  Get.offNamed(AppRoute().loginRoute);
                },
                child: Text("logout")
            )

          ],
        ),
      ),
    );
    throw UnimplementedError();
  }

}