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
            return ListTile(title: Text(curation[index]['title']));
          },
        )
    );
  }

}