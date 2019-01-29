import 'package:flutter/material.dart';
import 'package:flutter_youtube/flutter_youtube.dart';

import 'dart:convert';
import 'api.dart';


class YoutubePlayer extends StatefulWidget {

  YoutubePlayer();

  @override
  _YoutubePlayer createState() => _YoutubePlayer();
}

class _YoutubePlayer extends State<YoutubePlayer> {

  var youtube = new FlutterYoutube();

  void playYoutubeVideo() {
    FlutterYoutube.playYoutubeVideoByUrl(
      apiKey: "AIzaSyBm-0x-ur2OKCl3bBQXUcL8O-eixTNxRHE",
      videoUrl: "https://www.youtube.com/watch?v=fhWaJi1Hsfo",
      fullScreen: false
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Youtube Player"),
        ),
        body: new SingleChildScrollView(
          child: new Column(
            children: <Widget>[
              new Padding(
                  padding: EdgeInsets.all(10.0),
                child: new RaisedButton(
                  child: Text("눌러요"),
                    onPressed: playYoutubeVideo
                ),
              )
            ],
          ),
        )
    );
  }

}