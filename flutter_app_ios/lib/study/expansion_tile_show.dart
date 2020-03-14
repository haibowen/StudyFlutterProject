import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ExpansionTitleShow());
}

class ExpansionTitleShow extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ExpansionTitleShowState();
  }
}

class ExpansionTitleShowState extends State<ExpansionTitleShow> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('测试'),
        ),
        body: Column(
          children: <Widget>[

            ExpansionTile(
              initiallyExpanded: true,
             onExpansionChanged: (va){


             },

             // leading: Icon(Icons.event),
              title: Row(children: <Widget>[
                Text('显示'),
                Icon(Icons.event),

              ],),
              children: <Widget>[
//                ListTile(
//                  trailing: Icon(Icons.title),
//                  contentPadding: EdgeInsets.only(left: 30, right: 30),
//                  leading: Icon(Icons.forward),
//                  title: Text('第一要显示的内容,代码是写给机器看的的的'),
//                  onTap: () {},
//                )
                Text(
                  '代码是写给人看的，附带着运行在机器上的',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.start,
                ),
                Text(
                  '代码是写给人看的，附带着运行在机器上的',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.start,
                ),
                Text(
                  '代码是写给人看的，附带着运行在机器上的',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.start,
                ),
                Text(
                  '代码是写给人看的，附带着运行在机器上的',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
