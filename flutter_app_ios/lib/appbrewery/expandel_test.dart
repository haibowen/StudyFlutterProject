import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ios/test/app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('显示'),
        ),
        body: Deices(),
      ),
    );
  }
}

class Deices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
            child: Image.asset("images/logo.jpg"),
            onPressed: () {},
          )),
          Expanded(
              child: FlatButton(
            child: Image.asset("images/logo.jpg"),
            onPressed: () {},
          ))
        ],
      ),
    );
  }
}
