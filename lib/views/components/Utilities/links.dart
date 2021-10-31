
import 'dart:io';

import 'package:associa_med_app/views/components/assets/db_icons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../theme.dart';

Widget socialLinks() {
  return MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: const Text("Links"),
        ),
        body: Container(
          height: 270,
          color: AppTheme.appTheme.primaryColor,
          child: Center(
            child: Column(
              children: [
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: 30, right: 30, top: 25),
                    child: Text(
                      "sqkjdhkjsclx,wnc;,xwnqslkjcklwx kjlkdjcmskcm lkmlcùmlsclwxjcui" +
                          "\n\r" +
                          "\n\r" +
                          "qkdjnskc,:;xwcklwjxuc,wxnbc, ;qcksjc:w,x:kc, kjjqslcjxlwknc qshjlsqjk",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'MyriadPro',
                          fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const <Widget>[
                      Icon(
                        MyFlutterApp.gplus,
                        color: Colors.white,
                        size: 34.0,
                        semanticLabel: 'Text to announce in accessibility modes',
                      ),
                      IconButton(
                        icon: Icon(
                          MyFlutterApp.youtube,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        onPressed: _openYouTubeURL,
                      ),
                      // ignore: deprecated_member_use
                      IconButton(
                          icon: Icon(
                            MyFlutterApp.facebook,
                            color: Colors.white,
                            size: 36.0,
                          ),
                          onPressed: _launchFacebookURL,
                      ),
                      IconButton(
                        icon: Icon(
                          MyFlutterApp.instagram,
                          color: Colors.white,
                          size: 36.0,
                        ),
                        onPressed: _openInstagramURL,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )),
  );
}
_launchFacebookURL() async {
  String fbProtocolUrl;
  if (Platform.isIOS) {
    fbProtocolUrl = 'fb://profile/114958625273418';
  } else {
    fbProtocolUrl = 'fb://page/114958625273418';
  }

  String fallbackUrl = 'https://www.facebook.com/associamed.sfax';

  try {
    bool launched = await launch(fbProtocolUrl, forceSafariVC: false);

    if (!launched) {
      await launch(fallbackUrl, forceSafariVC: false);
    }
  } catch (e) {
    await launch(fallbackUrl, forceSafariVC: false);
  }
}
_openInstagramURL() async{
  String url = 'https://www.instagram.com/associamedsfax/';

  try {
    bool launched = await launch(url, forceSafariVC: false);

    if (!launched) {
      await launch(url, forceSafariVC: false);
    }
  } catch (e) {
    await launch(url, forceSafariVC: false);
  }
}
_openYouTubeURL() async{
  String url = 'https://www.youtube.com/c/AssociaMedSfax/';

  try {
    bool launched = await launch(url, forceSafariVC: false);

    if (!launched) {
      await launch(url, forceSafariVC: false);
    }
  } catch (e) {
    await launch(url, forceSafariVC: false);
  }
}