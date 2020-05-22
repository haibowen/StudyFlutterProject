import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graceful_widget_plugin/button/gf_button.dart';


void main(){
  runApp(TestShow());
}
class TestShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('显示'),
        ),
        body: Center(
            child: GFButton(
          text: '显示',
          color: Colors.purple,

        )),
      ),
    );
  }
}
