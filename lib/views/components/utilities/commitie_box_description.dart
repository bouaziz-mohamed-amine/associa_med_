import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class CommityBoxDescription extends GetView{
  @override
  Widget build(BuildContext context) {
    return Padding (
      padding: const EdgeInsets.all(16.0),
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Color(0xFFBCE0FD),
            ),
            SizedBox(width: 15,),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(right: 60),
                child: Text(
                  "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia.",
                  style: TextStyle(color: Color(0xFF2699FB)),
                ),
              ),
            )
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }

}