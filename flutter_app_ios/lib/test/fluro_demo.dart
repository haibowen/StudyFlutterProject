

import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ios/common/application.dart';
import 'package:flutter_app_ios/test/app.dart';

class FluroDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return FluroDemoState();
  }


}

class FluroDemoState extends State<FluroDemo>{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:  Text('nav'),
        ),
        body: RaisedButton(
          onPressed: (){


          },
          child: Text('路由'),
        ),
      ),
    );

  }

}