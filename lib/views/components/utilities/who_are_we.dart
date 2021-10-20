import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class WhoWeAre extends GetView {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 0.5),
      child: Container(
        height: 345,
        color: Color(0xFF13509D),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Align(
                child: Text(
                  "WHO ARE WE",
                  style: TextStyle(color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                alignment: Alignment.topLeft,
              ),
              SizedBox(height: 10,),
              Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit,"
                  " sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. "
                  "Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip "
                  "ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie ",
                style: TextStyle(color: Colors.white, fontSize: 16, height: 1.5),

              ),
              SizedBox(height: 13,),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: TextButton(

                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          )
                      ),
                      foregroundColor: MaterialStateProperty.all<Color>(
                          Colors.white),
                      backgroundColor:  MaterialStateProperty.all<Color>(
                          Color(0xFF2699FB)),
                    ),
                    onPressed: () {},
                    child: Text('Read More'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
    throw UnimplementedError();
  }
}
