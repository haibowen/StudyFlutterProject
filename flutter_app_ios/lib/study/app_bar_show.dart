

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(MyAppbar());

}

class MyAppbar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState



    return MyAppbarState();

  }



}

class MyAppbarState extends State<MyAppbar>{
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('appbar'),
          leading: Builder(builder: (context){
            return IconButton(
                icon: Icon(Icons.dashboard,color: Colors.white,),
                onPressed: (){

                });
          }),
        ),
        body: Container(

        ),
      ),
    );
  }




}