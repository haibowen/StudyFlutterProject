import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_app_ios/test/drop_down.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(
    new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: new FlutterDemo(),
    ),
  );
}

class FlutterDemo extends StatefulWidget {
  FlutterDemo({Key key}) : super(key: key);

  @override
  _FlutterDemoState createState() => new _FlutterDemoState();
}

class _FlutterDemoState extends State<FlutterDemo> {
  String  _counter;

  @override
  void initState() {
    super.initState();
    _readCounter().then((String value) {
      setState(() {
      //  _counter = value;
      });
    });
  }

  Future<File> _getLocalFile() async {
    // get the path to the document directory.
    String dir = (await getApplicationDocumentsDirectory()).path;
    print(dir);
    //return new File('$dir/counter.txt');
    //E:\FlutterProject\StudyFlutterProject\flutter_app_ios\serve\scaffold.vue

    return new File('E:/FlutterProject/StudyFlutterProject/flutter_app_ios/serve/scaffold.vue');
  }

  Future<String> _readCounter() async {
    try {
      File file = await _getLocalFile();
      // read the variable as a string from the file.
      String contents = await file.readAsString();

      return contents;
    } on FileSystemException {
      return '123';
    }
  }

  Future<Null> _incrementCounter() async {
    setState(() {

    });
    // write the variable as a string to the file
    await (await _getLocalFile()).writeAsString('$_counter');
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Flutter Demo')),
      body: new Center(
        child: Text('')
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}