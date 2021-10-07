import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData appTheme = ThemeData(
    primaryColor: Color(0xFF13509D),    // main Color
    secondaryHeaderColor: Color(0xFFBCE0FD),  // Secondary Color
    backgroundColor: Color(0xFFFFFFFF),  // background color
      buttonColor: Color(0xFF2699FB),
    fontFamily: 'MyriadPro-Regular',
   // bottomAppBarTheme: //TODO ,
    appBarTheme: AppBarTheme(
      color: Color(0xFF2699FB),
      textTheme: TextTheme(
        headline1: TextStyle(
          color: Color(0xFFFFFFFF),
          fontWeight: FontWeight.bold,
        )
      )
    )
  );
}