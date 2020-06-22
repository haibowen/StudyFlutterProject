import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ios/innherwidget_test/counter_widget.dart';

import 'counter_show_widget.dart';

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
    return HomePageStateTest();
  }
}

class HomePageStateTest extends State<HomePage> {

  int count =0;
  void incrementCounter(){
    setState(() {
      count++;
    });

  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('设置'),
      ),
      body: CounterShowWidget(homePageState: this, increament: incrementCounter,child: MyWidget() ),




    );
  }
}

class MyWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
CounterShowWidget counterShowWidget=CounterShowWidget.of(context);
    // TODO: implement build
    return Column(
      children: <Widget>[
    Text("${counterShowWidget.homePageState.count}"),
        RaisedButton(
          child: Text('点击'),
          onPressed: (){
            counterShowWidget.increament();

          },
        ),

      ],
    );



  }


}