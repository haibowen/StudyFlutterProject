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

            new Stepper(
             // type: StepperType.horizontal,
              currentStep: 2,  // <-- 激活的下标
              steps: <Step>[
                new Step(
                  title: new Text('第一步'),
                  content: new Text(''),
                  state: StepState.complete,
                  isActive: true,
                  subtitle: new Text(''),
                ),
                new Step(
                  title: new Text('第二步'),
                  content: new Text(''),
                  state: StepState.complete,
                  isActive: true
                ),
                new Step(
                  title: new Text('第三步'),
                  content: new Text(''),
                ),
              ],
            ),
//        Row(
//          mainAxisAlignment: MainAxisAlignment.spaceAround,
//          children: <Widget>[
//          Container(
//            height: 1,
//            width: 50,
//            color: Colors.black,
//          ),
//            Text('123'),
//            Container(
//              height: 1,
//              width: 250,
//              color: Colors.black,
//            ),
//          ],
//        ),
          ],
        ),
      ),
    );


  }
}








