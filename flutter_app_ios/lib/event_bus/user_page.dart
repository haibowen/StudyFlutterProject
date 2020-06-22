import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ios/event_bus/event_bus.dart';
import 'package:flutter_app_ios/event_bus/home_page.dart';
import 'package:flutter_app_ios/test/app.dart';

class UserPageTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return UserPageTestState();
  }
}

class UserPageTestState extends State<UserPageTest> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('显示'),
      ),
      body: Center(
        child: Container(
          child: RaisedButton(
            child: Text('点击'),
            onPressed: (){
              eventBus.fire(CustomerEvent("hello"));

            },
          ),
        ),
      ),
    );
  }
}
