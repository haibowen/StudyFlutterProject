import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(TagShow());
}

class TagShow extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TagShowState();
  }
}

class TagShowState extends State<TagShow> {
  var content = Container(
    height: 40,
    width: 40,
    color: Colors.red,
  );
  String data = "111";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('显示'),
        ),
        body: InkWell(
          child: getVisibleWidget(data),
          onTap: () {
            setState(() {
              data = "22";
            });
          },
        ),
      ),
    );
  }

  Widget getVisibleWidget(String data) {
    var contentShow;
    if (data == "111") {
      contentShow = Text('1111');
    } else {
      contentShow = Container(
        height: 0,
        width: 0,
      );
    }
    return contentShow;
  }
}
