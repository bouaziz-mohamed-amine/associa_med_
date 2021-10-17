import 'package:associa_med_app/views/components/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';

Widget NewsPost(String header,String description ,BuildContext context){
  return Center(
    child: Card(
      borderOnForeground: true,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim. ',style: TextStyle(color: AppTheme.appTheme.buttonColor,fontWeight:FontWeight.bold,fontSize: 15 )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: AppTheme.appTheme.secondaryHeaderColor,
                width: MediaQuery.of(context).size.width * 0.24,
                height: MediaQuery.of(context).size.height * 0.28,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.height * 0.01,
              ),
              Column(
                children: [
                  Container(
                    color: AppTheme.appTheme.secondaryHeaderColor,
                    width: MediaQuery.of(context).size.width * 0.24,
                    height: MediaQuery.of(context).size.height * 0.13,
                  ),
                  SizedBox(
                    height:MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(
                    color: AppTheme.appTheme.secondaryHeaderColor,
                    width: MediaQuery.of(context).size.width * 0.24,
                    height: MediaQuery.of(context).size.height * 0.13,
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height:MediaQuery.of(context).size.height * 0.02,
          ),
          Row(
            children: [
              Container(
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: (){},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.access_time_rounded,color: AppTheme.appTheme.buttonColor),
                      Text('1h ago',style: TextStyle(color: AppTheme.appTheme.buttonColor),)
                    ],
                  ),
                ),
              ),

            ],
          )
        ],
      ),
    ),
  );
}