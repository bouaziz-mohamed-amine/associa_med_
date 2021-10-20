import 'package:associa_med_app/controllers/user_controller.dart';
import 'package:associa_med_app/routes/app_route.dart';
import 'package:associa_med_app/views/components/utilities/who_are_we.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<UserController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Container(
        child: Column(
          children: [
            WhoWeAre(),

            Text(controller.getCurrentUser().email),
            ElevatedButton(
                onPressed: () {
                  controller.logout();
                  Get.offNamed(AppRoute().loginRoute);
                },
                child: Text("logout")),
            Container(
                child: controller.obx(
              (state) => Text(state!.email),
              onLoading: CircularProgressIndicator(),
              onEmpty: Text('No data found'),
              onError: (error) => Text(error!),
            )),
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }

  Widget CustomLoadingIndicator() {
    return Container(
      child: CircularProgressIndicator(),
    );
  }
}
