import 'package:flutter/material.dart';
import 'package:flutter_app_ios/test/app.dart';

void main() {
  runApp(DemoContext());
}

class DemoContext extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DemoContextState();
  }
}

class DemoContextState extends State<DemoContext> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('demo'),
      ),
      body: Row(
        children: <Widget>[
          Container(
            key: GlobalKey(),
            width: MediaQuery.of(context).size.width,
            child: RaisedButton(
              child: Text('123'),
            ),
          ),
          Container(
            child: RaisedButton(
              child: Text('123'),
            ),
          ),
          Container(
            child: RaisedButton(
              child: Text('123'),
            ),
          ),
        ],
      ),
    ));
  }

  Widget getWidget() {}
}
