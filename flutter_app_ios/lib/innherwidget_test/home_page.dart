import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ios/innherwidget_test/counter_widget.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('设置'),
      ),
      body: CounterWidget(count: 20, child: MyWidget() ),




    );
  }
}

class MyWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    CounterWidget state=CounterWidget.of(context);
    // TODO: implement build
    return Text("${state.count}");
  }


}