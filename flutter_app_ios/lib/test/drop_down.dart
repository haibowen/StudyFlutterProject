import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ios/test/app.dart';

void main() => runApp(Dropdown());

class Dropdown extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DropDownTest();
  }
}

class DropDownTest extends State<Dropdown> {
  List<DropdownMenuItem<String>> menitem = [];
  String _select = "排序";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    menitem.add(DropdownMenuItem(value: '排序',child: new Text('1'),));
    menitem.add(DropdownMenuItem(value: '测试',child: new Text('2'),));
    menitem.add(DropdownMenuItem(value: '设置',child: new Text('3'),));

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: new Text('drop button'),
        ),
        body: getList(),
      ),
    );
  }

  Widget getList() {
    return DropdownButton(
      value: _select,
      items: menitem,
      
    );
  }
}
