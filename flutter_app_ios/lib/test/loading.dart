import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(GetWidgetWidthAndHeiget());
}

class GetWidgetWidthAndHeiget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('demo'),
      ),
      body: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 30),),
          LinearProgressIndicator(
           // backgroundColor: Colors.blue,
             //value: 0.2,
            valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
          ),
          Padding(padding: EdgeInsets.only(top: 30),),
          CircularProgressIndicator(
            strokeWidth: 4.0,
            valueColor: new AlwaysStoppedAnimation<Color>(Colors.grey),
          ),
          Padding(padding: EdgeInsets.only(top: 30),),
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
            ) ,
          ),
        ],
      ),
    );
  }
}
