
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
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Switch(
                  value: switched,
                  onChanged: (va) {
                    setState(() {
                      switched = va;
                    });
                  },
                ),
                SizedBox(
                  width: 120,
                  child:  Switch(
                    value: switched,
                    onChanged: (va) {
                      setState(() {
                        switched = va;
                      });
                    },
                  ),
                ),

                Checkbox(
                  tristate: true,
                  value: checkbox,
                  onChanged: (va) {
                    setState(() {
                      checkbox = va;
                    });
                  },
                ),
              ],
            ),
          )),
    );
  }
}
