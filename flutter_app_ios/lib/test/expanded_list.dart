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
          body: ExpansionTile(
            title: Text('组件测试'),
            children: <Widget>[
              ExpansionTile(
                title: Text('基本组件'),
                onExpansionChanged: (isOpen){


                },
                children: <Widget>[
                  ListTile(
                    title:  Text('button'),
                  ),
                  ListTile(
                    title:   Text('cell'),
                  ),
                  ListTile(
                    title:   Text('icon')

                  ),


                ],
              ),
              ListTile(
                title: Text('基本组件'),
              ),
              ListTile(
                title: Text('反馈组件'),
              ),
            ],
          )
      ),

    );
  }
}