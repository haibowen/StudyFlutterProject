import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyDrop());

class MyDrop extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyDropState();
  }

}

class MyDropState extends State<MyDrop> {

  String dropDownValue="组件使用示例";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('drop demo'),
        ),
        body:DropdownButton<String>(
          value: dropDownValue,
          icon: Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          onChanged: (String newValue){
            setState(() {
              dropDownValue=newValue;
              print('我被点击了$newValue');
            });
          },
          items: <String>['组件使用示例','appbar组件使用','Scfolld组件使用','底部导航组件','Wrap组件使用']
          .map<DropdownMenuItem<String>>((String value){
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),

            );
          }).toList(),


        ),
      ),
    );
  }

}