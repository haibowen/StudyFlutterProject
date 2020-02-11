import 'package:flutter/material.dart';

void main() {
  runApp(GetWidgetWidthAndHeiget());
}

class GetWidgetWidthAndHeiget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('demo'),
      ),
      body: Row(
        children: <Widget>[
          Container(
            child: RaisedButton(
              child: Text('测试'),
            ),
            width: MediaQuery.of(context).size.width / 2,
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0),
            child: RaisedButton(
              child: Text('实际'),
            ),
            width: MediaQuery.of(context).size.width / 6,
          ),
          Radio(

          )
        ],
      ),
    );
  }
}