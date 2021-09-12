import 'package:associa_med_app/controllers/auth_controller.dart';
import 'package:associa_med_app/routes/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class LoginScreen extends GetView<AuthController> {

  @override
  Widget build(BuildContext context) {
    return
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  'Welcome back!',
                  style: TextStyle(
                      letterSpacing: 1.3,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 32),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  'Sign in to your account',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              _form(context),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                  // ignore: deprecated_member_use
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Create One',

                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
              SizedBox(height: 48,)
            ],
          ),
        );
    throw UnimplementedError();
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
                      onTap: (){
                        controller.login();
                        if(controller.box.read("token") !=null){
                          Get.toNamed(AppRoute().homePageRoute);

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