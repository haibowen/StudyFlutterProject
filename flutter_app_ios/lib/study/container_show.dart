
import 'package:flutter/material.dart';

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
  bool checkbox = false;
  bool switched = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.grey,
          appBar: AppBar(
            title: Text('测试'),
          ),
          body:Container(
            margin: EdgeInsets.only(top: 150.0,left: 150),
            constraints: BoxConstraints.tightFor(width: 200.0,height: 150.0),
            decoration: BoxDecoration(
//              gradient: RadialGradient(
//                colors: [Colors.red,Colors.orange],
//                center: Alignment.topLeft,
//                radius: .98,
//
//
//              ),
                gradient: RadialGradient(
                  colors: [Colors.red,Colors.orange],
                  center: Alignment.topLeft,
                  radius: .68
                ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(2.0,2.0),
                  blurRadius: 4.0,

                )
              ]
            ),
            transform: Matrix4.rotationZ(.2),
            alignment: Alignment.center,
            child: Text(
              '5.20',style: TextStyle(
              color: Colors.white,fontSize: 44.0
            ),
            ),



          ),
      )
    );
  }
}
