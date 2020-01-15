import 'package:badges/badges.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ios/common/application.dart';
import 'package:flutter_app_ios/test/app.dart';

void main() => runApp(FluroDemo());

class FluroDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FluroDemoState();
  }
}

class FluroDemoState extends State<FluroDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('nav'),
          ),
          body: Column(
            children: <Widget>[
              Center(
                child: Badge(
                  badgeContent: Text('33'),
                  child: Icon(
                    Icons.important_devices,
                    size: 60.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40),
              ),
              Container(
                height: 100.0,
                child: Stack(
                  children: <Widget>[
                    Icon(
                      Icons.event,
                      size: 40,
                    ),
                    Positioned(
                      top: -12,
                      child: Text(
                        '20',
                        style:
                            TextStyle(color: Colors.lightBlue, fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 220),
                title: Text('显示'),
                subtitle: Text('显示'),
                leading: Icon(Icons.style),
              ),
              Table(
                //表格边框样式
                border: TableBorder.all(
                  color: Colors.black,
                ),
                children: [
                  TableRow(children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text('姓名'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text('职业'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text('姓名'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text('职业'),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text('data'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text('data'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text('data'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text('data'),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text('data'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text('data'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text('data'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text('data'),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text('data'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text('data'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text('data'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text('data'),
                    ),
                  ]),
                ],
              ),

            ],
          )),
    );
  }
}
