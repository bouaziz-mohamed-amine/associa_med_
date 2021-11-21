import 'package:associa_med_app/controllers/action_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EventScreen extends GetView<ActionController> {
  final String urlImage ;
  final String description;
  final String title;

  EventScreen( this.title,this.urlImage, this.description);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title.toString()),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1,bottom: MediaQuery.of(context).size.height * 0.05 ),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: Image(
                    image: NetworkImage(urlImage.toString()),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.05),
                child: Text(description.toString(),
                    style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
