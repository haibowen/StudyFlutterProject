import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(RowDemo());

class RowDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RowDemostate();
  }
}

class RowDemostate extends State<RowDemo> {
  String _bodyStr = "显示菜单内容";
  final GlobalKey globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('popmenu'),
          ),
          body:Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width/3,
                child: RaisedButton(
                    onPressed: () {},
                    color: Colors.redAccent,
                    child: Text('红色按钮', style: TextStyle(color: Colors.white))),
              ),
              Container(
                width:MediaQuery.of(context).size.width/3 ,
                child: RaisedButton(
                    onPressed: () {},
                    color: Colors.redAccent,
                    child: Text('红色按钮', style: TextStyle(color: Colors.white))),
              ),
            ],
          ))
    );
  }

  Widget getRaiseButtonWidget() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Expanded(
          child: RaisedButton(
              onPressed: () {},
              color: Colors.redAccent,
              child: Text('红色按钮', style: TextStyle(color: Colors.white))),
        ),
        Expanded(
          child: RaisedButton(
              onPressed: () {},
              color: Colors.orangeAccent,
              child: Text('橙色按钮', style: TextStyle(color: Colors.white))),
        ),
        Expanded(
          child: RaisedButton(
              onPressed: () {},
              color: Colors.blueAccent,
              child: Text('蓝色按钮', style: TextStyle(color: Colors.white))),
        ),
        Expanded(
          child: RaisedButton(
              onPressed: () {},
              color: Colors.blueAccent,
              child: Text('蓝色按钮', style: TextStyle(color: Colors.white))),
        ),
      ],
    );
  }

  Widget getContaninerWidget() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Expanded(
            child: Container(
          margin: EdgeInsets.only(left: 20.0),
          child: RaisedButton(
              onPressed: () {},
              color: Colors.redAccent,
              child: Text('红色按钮', style: TextStyle(color: Colors.white))),
        )),
        Expanded(
            child: Container(
          margin: EdgeInsets.only(left: 40.0),
          child: RaisedButton(
              onPressed: () {},
              color: Colors.redAccent,
              child: Text('红色按钮', style: TextStyle(color: Colors.white))),
        )),
        Expanded(
            child: Container(
          margin: EdgeInsets.only(left: 20.0),
          child: RaisedButton(
              onPressed: () {},
              color: Colors.redAccent,
              child: Text('红色按钮', style: TextStyle(color: Colors.white))),
        )),
      ],
    );
  }


  Widget getContaninerPercentWidget() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 20.0),
              child: RaisedButton(
                  onPressed: () {},
                  color: Colors.redAccent,
                  child: Text('红色按钮', style: TextStyle(color: Colors.white))),
            )),
        Expanded(
            child: Container(
              width: 80,
              margin: EdgeInsets.only(left: 40.0),
              child: RaisedButton(
                  onPressed: () {},
                  color: Colors.redAccent,
                  child: Text('红色按钮', style: TextStyle(color: Colors.white))),
            )),
        Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 20.0),
              child: RaisedButton(
                  onPressed: () {},
                  color: Colors.redAccent,
                  child: Text('红色按钮', style: TextStyle(color: Colors.white))),
            )),
      ],
    );
  }

  Widget getContainerWidgetTest(BuildContext context){
    return Row(
      children: <Widget>[
        Container(
          key:globalKey,
          width:MediaQuery.of(context).size.width/3,
          child: RaisedButton(
              onPressed: () {},
              color: Colors.redAccent,
              child: Text('红色按钮', style: TextStyle(color: Colors.white))),
        ),
        Container(
          key: globalKey,
          width: MediaQuery.of(context).size.width/3,
          child: RaisedButton(
              onPressed: () {},
              color: Colors.redAccent,
              child: Text('红色按钮', style: TextStyle(color: Colors.white))),
        ),
        Container(
          key: globalKey,
          width: MediaQuery.of(context).size.width/3,
          child: RaisedButton(
              onPressed: () {},
              color: Colors.redAccent,
              child: Text('红色按钮', style: TextStyle(color: Colors.white))),
        ),
      ],
    );
  }
}
