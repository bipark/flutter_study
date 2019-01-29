import 'package:flutter/material.dart';
import 'get_list_and_show.dart';
import 'youtube_player.dart';

class MenuListWidget extends StatelessWidget {

  MenuListWidget();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Menu List"),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text('데이터 가지고 와서 뿌리기'),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GetListAndShow()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('유튜브 플레이'),
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => YoutubePlayer()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            ),
          ],
        )
    );
  }

}