import 'package:flutter/material.dart';

import 'dart:convert';
import 'api.dart';

class GetListAndShow extends StatefulWidget {

  GetListAndShow();

  @override
  _GetListAndShow createState() => _GetListAndShow();
}

class _GetListAndShow extends State<GetListAndShow> {

  var curation = new List();

  _getCuration() {
    API.getCuration().then((response){
      setState(() {
        var body = json.decode(response.body);
        curation = body['curations'];
      });
    });
  }

  _getImage(curation) {
    var details = curation['details'][0];
    var datas = json.decode(utf8.decode(base64.decode(details['datas'])));
//?    print(datas);
    var snippet = datas['snippet']['thumbnails']['default'];
    return snippet['url'] ?? "https://i.ytimg.com/vi/L1W3ez9LF9M/mqdefault.jpg";
  }

  void initState() {
    super.initState();
    _getCuration();
  }

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Curations"),
        ),
        body: ListView.builder(
          itemCount: curation.length,
          itemBuilder: (context, index){
            return ListTile(
                contentPadding: EdgeInsets.all(10.0),
                title: Text(curation[index]['title']),
                subtitle: Text(curation[index]['description'] ?? ''),
                leading: new Image.network(
                  _getImage(curation[index]),
                  fit: BoxFit.cover,
                  height: 90.0,
                  width: 90.0,
                ),
            );
          },
        )
    );
  }

}