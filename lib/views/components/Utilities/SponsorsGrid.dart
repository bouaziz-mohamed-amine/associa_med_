import 'package:associa_med_app/views/components/theme.dart';
import 'package:flutter/material.dart';
Widget gridViewComponent (String title ,String description , BuildContext context){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
      Text(title),
      SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
      Text(description,textAlign: TextAlign.center,),
      Expanded(
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                ),
            itemCount: 15,
            itemBuilder: (BuildContext context, index) {
              return Container(
                alignment: Alignment.center,
                child: Container(
                  width: MediaQuery.of(context).size.width*0.1 ,
                  height: MediaQuery.of(context).size.width*0.1 ,
                  color: AppTheme.appTheme.primaryColor,
                ),
              );
            }),
      ),

    ],
  );
}

