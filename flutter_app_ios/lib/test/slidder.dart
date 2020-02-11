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
          body: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 30),
              ),
              LinearProgressIndicator(
                // backgroundColor: Colors.blue,
                //value: 0.2,
                valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
              ),
              CircularProgressIndicator(
                strokeWidth: 4.0,
                valueColor: new AlwaysStoppedAnimation<Color>(Colors.grey),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
              ),
              CircularProgressIndicator(
                strokeWidth: 4.0,
                backgroundColor: Colors.blue,
                // value: 0.2,
                //valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
              ),
              CupertinoActivityIndicator(
                radius: 20.0,
                animating: true,
              ),
              SizedBox(
                child: CircularProgressIndicator(),
                height: 110.0,
                width: 110.0,
              ),
              SizedBox(
                child: CupertinoActivityIndicator(
                  radius: 80.0,
                  animating: true,
                ),
              ),

              CupertinoSlider(
                value: value,
                //实际进度的位置
                min: 0.0,
                max: 100.0,
                divisions: 100,
                activeColor: Colors.blue,
                //进度中活动部分的颜色
                onChanged: (double) {
                  setState(() {
                    value = double.roundToDouble();
                  });
                },
              )
            ],
          ),
        ),
      );


  }
}
