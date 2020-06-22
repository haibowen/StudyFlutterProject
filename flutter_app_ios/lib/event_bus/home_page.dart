
import 'dart:async';

import 'package:event_bus/event_bus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ios/event_bus/user_page.dart';
import 'package:flutter_app_ios/provider/user_page.dart';
import 'package:flutter_app_ios/test/app.dart';

import 'event_bus.dart';
import 'get_value_event.dart';

EventBus eventBus=new EventBus();
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: MyHome()
    );
  }




}

class MyHome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomeState();
  }


}

class MyHomeState extends State<MyHome>{
  String msg="通知";
  bool isTrue=false;
  StreamSubscription streamSubscription;
  StreamSubscription _streamSubscription;
  @override
  void initState() {
    // TODO: implement initState

    //事件监听
//    streamSubscription=eventBus.on<CustomerEvent>().listen((event){
//      setState(() {
//        msg+=event.msg;
//      });
//    });
  streamSubscription=eventBus.on<CustomerEvent>().listen((event){
    setState(() {
      msg+=event.msg;
    });
  });
  _streamSubscription=eventBus.on<ValueChange>().listen((event){

    setState(() {
      isTrue=event.isStop;
    });
  });
    super.initState();

  }
@override
  void dispose() {
    // TODO: implement dispose
  streamSubscription.cancel();
  _streamSubscription.cancel();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          title: Text('event-bus'),
      ),
      body:Column(
        children: <Widget>[
          Text(msg),
          FlatButton(
            child: Icon(Icons.fiber_new),
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UserPageTest()));
            },
          ),
          RaisedButton(
            child: Text('增加'),
            onPressed: (){
              eventBus.fire(CustomerEvent("hyplo"));
            },
          ),
          Text("$isTrue"),
          RaisedButton(
            child: Text('改变'),
            onPressed: (){
              eventBus.fire(ValueChange(true));
            },
          ),
        ],
      ),
      
    ) ;
  }

}