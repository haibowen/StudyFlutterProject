import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBottomNavBar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {



  }



}

class MyBottombarState extends State<MyBottomNavBar>{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('底部导航测试'),

        ),
        body: Center(
          child: Text('这是页面一'),
        ),
        floatingActionButton: FloatingActionButton(

        ),
        bottomNavigationBar: BottomNavigationBar(

        ),
      ),
    );



  }

}