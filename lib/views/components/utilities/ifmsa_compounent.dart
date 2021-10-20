import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class IFMSACompunent extends GetView{
  @override
  Widget build(BuildContext context) {
   return Container(
     height: 300,
     decoration: BoxDecoration(
       color: Color(0xFFBCE0FD) ,
       border: Border.all(
           color:Color(0xFF707070) ),
     ),
     child: Padding(
       padding: const EdgeInsets.only(top: 16, left: 16, right: 50),
       child: Column(
         children: [
           Padding(
             padding: const EdgeInsets.only(left: 2.5),
             child: Align(
               alignment: Alignment.topLeft,
               child: Text("IFMSA",
                 style: TextStyle(
                   color: Color(0xFF13509D),
                   fontWeight: FontWeight.bold,
                   fontSize: 20,
                 ),

               ),
             ),
           ),
           SizedBox(height: 12,),
           Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit,"
               " sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat."
               " Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. "
               "Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie ",
             style: TextStyle(fontSize: 16),
           ),
           SizedBox(height: 12,),
           Padding(
             padding: const EdgeInsets.only(left: 13),
             child: Align(
               alignment: Alignment.bottomLeft,
               child: SizedBox(
                 width: 119,
                 height: 37,
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
                   child: Text('READ MORE'),
                 ),
               ),
             ),
           ),

         ],
       ),
     ),

   );
    throw UnimplementedError();
  }

}