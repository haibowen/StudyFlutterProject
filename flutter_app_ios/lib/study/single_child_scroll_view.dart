

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';


void main(){

  runApp(SingleChildScrollShow());
}
class SingleChildScrollShow extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return SingleChildScrollShowState();



  }


}

class SingleChildScrollShowState extends State<SingleChildScrollShow> with SingleTickerProviderStateMixin{
  Animation<double> animation;
  AnimationController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller=new AnimationController(duration: const Duration(seconds: 4),vsync:this);
    animation=new Tween(begin: 0.0,end: 300.0).animate(controller)
    ..addListener((){
      setState(() {

      });
    });
    controller.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();


  }

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text('显示'),
        ),
        body: Column(
          children: <Widget>[
            Image.asset('images/google_photo.png',height: animation.value,
            width: animation.value,)

          ],
        ),
      ),
    );
  }




}