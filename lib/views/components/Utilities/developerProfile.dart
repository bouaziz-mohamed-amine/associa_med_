// ignore: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

Widget developerProfile() {
  return Scaffold(
    appBar: AppBar(
      title: Text("Developer Profile"),
      backgroundColor: AppTheme.appTheme.primaryColor,
    ),
    body: ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return Container(
          color: AppTheme.appTheme.secondaryHeaderColor,
          height: MediaQuery.of(context).size.height * 0.65,
          margin: EdgeInsets.only(
            top: 50,
            left: 15,
            right: 15,
          ),
          padding: EdgeInsets.only(top: 20, right: 15),
          child: Padding(
            padding: const EdgeInsets.only(left:20.0, right: 20, top:10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Transform.translate(
                    offset: Offset(-27,0),
                    child: Text(
                      "Trabelsi Akram",
                      style: TextStyle(
                          color: Color(0xFF2699FB), fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                contentPadding: EdgeInsets.only(right: 0),
                subtitle: Transform.translate(
                  offset: Offset(-27,0),
                  child: Text(
                    "Software Engineer",
                    style: TextStyle(
                      color: Color(0xFF2699FB),
                    ),
                  ),
                ),
                trailing: Icon(
                  Icons.more_vert,
                  color: Color(0xFF2699FB),
                ),
                leading: Transform.translate(
                  offset: Offset(-12,0),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        "https://image.shutterstock.com/image-vector/free-shipping-label-600w-1194070801.jpg"),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "qsdsqcmlq  mkmqskdù",
                style: TextStyle(fontSize: 40, color: Color(0xFF2699FB)),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                " qsdsqcmlq klqs mkmqskdù qsdsqcmlq klqs mkmqskdù qsdsqcmlq klqs mkmqskdù qsdsqcmlq klqs mkmqskdù qsdsqcmlq klqs mkmqskdù qsdsqcmlq klqs mkmqskdù qsdsqcmlq klqs mkmqskdù qsdsqcmlq"
                " klqs mkmqskdù qsdsqcmlq klqs mkmqskdù qsdsqcmlq klqs mkmqskdù qsdsqcmlq klqs mkmqskdù q",
                style: TextStyle(color: Color(0xFF2699FB)),
              ),
              SizedBox(
                height: 80,
              ),
              Text(
                "Lorem ipsum",
                style: TextStyle(
                  color: Color(0xFF2699FB),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              )
            ]),
          ),
        );
      },
    ),
  );
}
