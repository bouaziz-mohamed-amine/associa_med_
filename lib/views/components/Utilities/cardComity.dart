import 'package:flutter/material.dart';
Widget cardComity(
    String title, String description,String image ,String network, String date,Function context) {
  return  Padding(
    padding:  EdgeInsets.only(bottom: MediaQuery.of(context()).size.height*0.05),
    child: Container(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context()).size.height * 0.3,
            color: Colors.blue,
            child: Image(
              image: NetworkImage(image.toString()),
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: 10,
                bottom: 10,
                right: MediaQuery.of(context()).size.width * 0.15),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  height: 1.7,
                  wordSpacing: 2,
                  color: Colors.blue),
            ),
          ),
          // Text(description,
          //     style:
          //     TextStyle(fontSize: 17, height: 1.5, color: Colors.blue)),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.message,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 10),
                    Text(network,
                        style: TextStyle(
                            fontSize: 17, height: 1.5, color: Colors.blue)),
                  ],
                ),
                SizedBox(width: 30),
                Row(
                  children: [
                    Icon(
                      Icons.access_time,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 10),
                    Text(date,
                        style: TextStyle(
                            fontSize: 17, height: 1.5, color: Colors.blue)),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
