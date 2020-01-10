
import 'dart:convert';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



void main(){
  runApp(IndextTest());
}

class IndextTest extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return IndexTestState();
  }

}

class IndexTestState extends State<IndextTest>{
  String content="flutter";
  @override
  Widget build(BuildContext context) {
    print("########################");
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('bar'),
          ),
          body: Column(
            children: <Widget>[
              Text(content),
              RaisedButton(
                onPressed: (){
                  getBodyString();
                  print(content);
                },
              )
            ],
          )

      ),
    );

  }
   getBodyString(){


    content="demo";

  }

}