import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class NavigatorPageShow2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NavigatorPageShowState();
  }
}

class NavigatorPageShowState extends State<NavigatorPageShow2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('第二个页面'),
        ),
        body: Column(
          children: <Widget>[
            Text('这是第二个页面'),
          ],
        ),
      ),
    );
  }
}
