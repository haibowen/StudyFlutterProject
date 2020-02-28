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
          body: Row(
            children: <Widget>[
              getWidget(),
              Padding(padding: EdgeInsets.only(left: 20),),
              getOtherWidget()
            ],
          )



      ),

    );
  }

  Widget getWidget(){

 return   Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 20),

          child:
        RaisedButton(
          child: Text('按钮'),
        ),
          height: 50,
          width: 100,

        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child:
        RaisedButton(

          child: Text('按钮'),
        ),
          height: 50,
          width: 100,

        ),
        SizedBox(
          child:
        RaisedButton(
          padding: EdgeInsets.only(top: 20),
          child: Text('按钮'),
        ),
          height: 50,
          width: 100,

        ),
        SizedBox(child:
        RaisedButton(
          padding: EdgeInsets.only(top: 20),
          child: Text('按钮'),
        ),
          height: 50,
          width: 100,

        ),
      ],
    );
  }

  Widget getOtherWidget(){
  return  Column(
      children: <Widget>[
        RaisedButton(child:
        Text('按钮一'),

        ),
        RaisedButton(child:
        Text('按钮一'),

        ),
        RaisedButton(child:
        Text('按钮一'),

        ),
        RaisedButton(child:
        Text('按钮一'),

        ),
      ],
    );
  }
}