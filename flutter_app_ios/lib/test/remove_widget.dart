import 'dart:convert';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(IndextTest());
}

class IndextTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return IndexTestState();
  }
}

class IndexTestState extends State<IndextTest> {
  String content = "flutter";
  List<Widget> ChildrenWidget = [];
  List<dynamic> dirList = [];
  List<Widget> ContentPage=[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getChildrenWidget();
  }

  @override
  Widget build(BuildContext context) {
    print("########################");
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('bar'),
          ),
          body: Container(
            child: Column(
              children: ChildrenWidget,
            ),
          )),
    );
  }

  getBodyString() {
    content = "demo";
  }

  List<Widget> getChildrenWidget() {
    return ChildrenWidget
      ..add(Text('点击右上角进行扫描'))
      ..add(RaisedButton(
        child: Text('使用虚拟机'),
        onPressed: () {
          setState(() {});
          ChildrenWidget.removeRange(0, 2);
          dirList..add('1')..add('2')..add('3');
          ChildrenWidget.add(ListView.builder(
            itemBuilder: getListItemBuilder,
            itemCount: dirList.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
          ));
        },
      ));
  }

  Widget getListItemBuilder(BuildContext context, int index) {
    return ExpansionTile(
      title: Text(dirList[index]),
      onExpansionChanged: (isExpansion) {
        if (isExpansion == true) {
          //getAllDirPage(index);
          ContentPage..add(Text('页面一'))
              ..add(Text('页面二'));
        } else {
          //listText.clear();
          ContentPage.clear();
        }
      },
      children: ContentPage,
    );
  }
}
