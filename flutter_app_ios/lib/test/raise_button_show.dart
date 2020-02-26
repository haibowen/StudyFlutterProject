import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:marquee_flutter/marquee_flutter.dart';

void main() {
  runApp(GetWidgetWidthAndHeiget());
}

class GetWidgetWidthAndHeiget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePage();
  }
}

class HomePage extends State<GetWidgetWidthAndHeiget> {
  double value = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('demo'),
          ),
          body:getWidgetTest()




//
//          Center(
//            child: RaisedButton(
//              child: Container(
//                constraints:  new BoxConstraints.expand(
//                  height:80,
//                  //width: 100,
//                ),
//                child: Center(
//                  child: Text('这是基本的按钮'),
//                )
//
//
//              ),
//            ),
//          )

      ),
    );
  }

  Widget  getWidget(){

    return Container(
        constraints:  new BoxConstraints.expand(
        height:80,
          width: 120,
        ),

      child:RaisedButton(
        child: Text('这是基本的按钮'),
      )
      ,
    );


  }
  Widget getWidgetTest(){
    return SizedBox(
      width: 160,
      height: 40,
      child: RaisedButton(
        child: Text('这是基本的按钮'),
      ),

    );
  }
}
