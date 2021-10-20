import 'package:associa_med_app/views/components/theme.dart';
import 'package:flutter/material.dart';

Widget ContinueButton(Widget widget){
  return Column(
    children: [
      ElevatedButton(
        onPressed: (){},
        child: widget,
        style: ElevatedButton.styleFrom(
          primary: AppTheme.appTheme.buttonColor,
            alignment: Alignment.center,
        ),
      ),
    ],
  );
}