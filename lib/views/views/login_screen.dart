import 'package:associa_med_app/controllers/auth_controller.dart';
import 'package:associa_med_app/routes/app_route.dart';
import 'package:associa_med_app/views/components/Utilities/Continue.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:associa_med_app/views/components/Utilities/ComityPost.dart';

class LoginScreen extends GetView<AuthController> {
String desc = 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est eopksio laborum.' ;
String title = 'Excepteur sint occaecat cupidatat non proident.';
  @override
  Widget build(BuildContext context) {
    return
        Scaffold(
          appBar: AppBar(
            title: Text('I am el Mr '),
            elevation: 1,
          ),
          body: ComityPost(title,desc,context),
          //bottomNavigationBar: ContinueButton(Text("Continue")),
        );
  }

  Widget _form(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      margin: EdgeInsets.only(bottom: 30, left: 24, right: 24),
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
          color: Color(0xFF121212),
          borderRadius: BorderRadius.all(Radius.circular(35))),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Stack(
          children: <Widget>[
            Form(
              key: controller.key,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    controller: controller.emailController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'email@address.com',
                      labelText: 'Your email',
                      hintStyle: TextStyle(color: Color(0xFF6B6B6B)),
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      focusColor: Colors.white,
                      focusedBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.white)),
                      enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.white)),
                      border: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: controller.passwordController,
                    obscureText: true,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: '************',
                      labelText: 'Password',
                      hintStyle: TextStyle(color: Color(0xFF6B6B6B)),
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      focusColor: Colors.white,
                      focusedBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.white)),
                      enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.white)),
                      border: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: InkWell(
                onTap: () {},
                child: Text(
                  'Forgot Password? ',
                  style: TextStyle(color: controller.yellowColor),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: InkWell(
                child: Transform.translate(
                  offset: Offset(47.85, 50),
                  child: Container(
                    width: 175,
                    height: 55,
                    decoration: BoxDecoration(
                        color: controller.yellowColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(35))),
                    child: InkWell(
                      onTap: () async{
                        await controller.login();
                        if(controller.box.read("token") !=null){
                          Get.offNamed(AppRoute().homePageRoute);

                        }



                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          InkWell(
                            child: Text(
                              'LOGIN',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            onTap: (){
                               controller.login();
                               Get.toNamed(AppRoute().homePageRoute);

                            },
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Icon(Icons.arrow_forward)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}