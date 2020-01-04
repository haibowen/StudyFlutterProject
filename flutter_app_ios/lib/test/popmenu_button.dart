import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(PopMenuButton());

class PopMenuButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PopMenuButtonstate();
  }
}

class PopMenuButtonstate extends State<PopMenuButton> {
  String _bodyStr = "显示菜单内容";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('popmenu'),
        ),
        body: PopupMenuButton(
          onSelected: (String value) {
            _bodyStr = value;
          },
          itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
            new PopupMenuItem(value: '选型一', child: Text('一')),
            new PopupMenuItem(value: '选型二', child: Text('2')),
            new PopupMenuItem(value: '选型三', child: Text('3'))
          ],
        ),
      ),
    );
  }
}
