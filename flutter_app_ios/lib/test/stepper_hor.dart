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
        body: Stepper(
            type: StepperType.horizontal,
            controlsBuilder:  (BuildContext context, {VoidCallback onStepContinue, VoidCallback onStepCancel}) {
              return Row(children: <Widget>[
              ]);
            },
            steps: [
              Step(title: Text('标题一'), content: Container(),isActive: true),
              Step(title: Text('标题二'), content: Container(),isActive: true),
              Step(title: Text('标题三'), content: Container()),
              Step(title: Text('标题四'), content: Container()),
            ]
        ),
      ),
    );


  }
}








