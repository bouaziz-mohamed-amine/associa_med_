import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../theme.dart';



Widget videoDesctiptions( YoutubePlayerController _controller) {
 return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller,
      ),
      builder: (context, player) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Events'),
            backgroundColor: AppTheme.appTheme.primaryColor,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              player,
              SizedBox(height: 20.0),
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 30, right: 30, top: 60),
                  child: Text(
                    "sqkjdhkjsclx,wnc;,xwnqslkjcklwx kjlkdjcmskcm lkmlcùmlsclwxjcui mlkopijoj kjl jipokll ijoipokok ipoipoklkmlk" +
                        "\n\r" +
                        "\n\r" +
                        "qkdjnskc,:;xwcklwjxuc,wxnbc, ;qcksjc:w,x:kc, kjjqslcjxlwknc qshjlsqjk kshjqslkmlkml lkmlkoiij llkmlùplpoj",
                    style: TextStyle(
                        color: Colors.blue,
                        fontFamily: 'MyriadPro',
                        fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        );
      });
}