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
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('demo'),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                Text('1111'),
                Container(
                  height: 100,
                  width: 100,
                ),
                Text('1111'),
                Container(
                  height: 100,
                  width: 100,
                ),
                Text('1111'),
                Container(
                  height: 100,
                  width: 100,
                ),
                Text('1111'),
                Container(
                  height: 100,
                  width: 1600,
                  color: Colors.red,
                  child:Stepper(
                    type: StepperType.horizontal,
                    steps: <Step>[
                      new Step(
                        title: new Text('第一步'),
                        content: new Text('第一步内容'),
                        state: StepState.complete,
                        isActive: true,
                        subtitle: new Text('第一步小标题'),
                      ),
                      new Step(
                        title: new Text('第二步'),
                        content: new Text('第二步内容'),
                        state: StepState.complete,
                      ),
                      new Step(
                        title: new Text('第三步'),
                        content: new Text('第三步内容'),
                        state: StepState.complete,
                      ),
                      new Step(
                        title: new Text('第三步'),
                        content: new Text('第三步内容'),
                        state: StepState.complete,
                      ),
                      new Step(
                        title: new Text('第三步'),
                        content: new Text('第三步内容'),
                        state: StepState.complete,
                      ),
                      new Step(
                        title: new Text('第三步'),
                        content: new Text('第三步内容'),
                        state: StepState.complete,
                      ),
                      new Step(
                        title: new Text('第三步'),
                        content: new Text('第三步内容'),
                        state: StepState.complete,
                      ),
                      new Step(
                        title: new Text('第三步'),
                        content: new Text('第三步内容'),
                        state: StepState.complete,
                      ),
                    ],
                  ) ,
                ),



              ],
            ),
          )),
    );
  }
}
