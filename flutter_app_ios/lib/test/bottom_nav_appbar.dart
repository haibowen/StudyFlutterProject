

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavAppbar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {


  }

}

class BottomNavAppbarState extends State<BottomNavAppbar>{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('bottomNavApp'),
        ),
        body: Center(
          child: Text('设置'),
        ),

      ),
    );
  }

}