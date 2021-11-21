import 'dart:html';

import 'package:associa_med_app/controllers/team_controller.dart';
import 'package:associa_med_app/routes/app_route.dart';
import 'package:associa_med_app/views/components/Utilities/cardComity.dart';
import 'package:associa_med_app/views/components/theme.dart';
import 'package:associa_med_app/views/views/event_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ComiteScreen extends GetView<TeamController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(()=>Text(controller.team.value.abbreviation.toString()))
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05,
          //vertical: MediaQuery.of(context).size.height*0.05
        ),
        width: double.infinity,
        color: Colors.white,
        child: Obx(()=>
            ListView.builder(
                itemCount: controller.actions.length+1,
                itemBuilder: (context, index) {
                  return index == 0
                      ? textComite(() => context)
                      : InkWell(
                    onTap: () => Get.to(EventScreen(
                        controller.actions.value[index-1].name,controller.actions.value[index-1].logo,controller.actions.value[index-1].description)),
                    child: cardComity(
                        controller.actions.value[index-1].name,
                        controller.actions.value[index-1].description,
                        controller.actions.value[index-1].logo,
                        "adobe.com",
                        "1h ago",
                            () => context),
                  );
                }),)
      ),
    );
  }

  Widget textComite(Function context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context()).size.height * 0.05),
      child: Column(
        children: [
              Obx(()=>Container(
                width: double.infinity,
                height: MediaQuery.of(context()).size.height * 0.25,
                child: Image(
                  image: NetworkImage(controller.team.value.logo.toString()),
                  fit: BoxFit.fill,
                ),
              )),
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context()).size.height * 0.05 ),
            child:Obx(()=> Text(
                controller.team.value.description.toString(),
                style: TextStyle(fontSize: 20)),)
          ),
        ],
      ),
    );
  }
  Widget circular(){
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
