
import 'package:flutter/material.dart';
import 'package:flutter_app_ios/test/app.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProviderHome(),
    );
  }
}

class ProviderHome extends StatefulWidget {
  @override
  _ProviderHomeState createState() => _ProviderHomeState();
}

class _ProviderHomeState extends State<ProviderHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('主页'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 60,
            width: 300,
            child: RaisedButton(
              child: Text('按钮'
              ),
              onPressed: (){

              },
            ),
          )
        ],
      ),
    );
  }
}


