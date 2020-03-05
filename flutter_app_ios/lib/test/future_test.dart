import 'package:flutter/cupertino.dart';
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
  double value = 0.0;

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      home:  Scaffold(
        appBar: AppBar(
          title: Text('demo'),
        ),
        body: Container(
          width: 140,
          child:  Row(
            children: <Widget>[
              Slider(
                value: value,
                onChanged:    2>1? (v) {
                  setState(() => value = v);
                }:null,
                label: "气泡:$value",//气泡的值
                divisions: 10, //进度条上显示多少个刻度点
                max: 100,
                min: 0,
              ),






            ],
          ),
        )

      ),
    );


  }
}
