import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

    return  MaterialApp(
      home:  Scaffold(
        appBar: AppBar(
          title: Text('demo'),
        ),
        body:Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 30),
              color: Colors.orange[100],
              height: 40,
              child:  MarqueeWidget(
                text: "ListView即滚动列表控件，能将子控件组成可滚动的列表。当你需要排列的子控件超出容器大小",
                textStyle: new TextStyle(fontSize: 18.0,color: Colors.red),
                scrollAxis: Axis.horizontal,
              ),
            ),
            Positioned(
                top: 8.0,
                left: 5.0,
                child: Container(
                  child: Icon(Icons.volume_up,color: Colors.red,)
                  ),
                  //decoration: BoxDecoration(color: Colors.blueAccent),
                 // padding: EdgeInsets.fromLTRB(5.0, 0, 5.0, 0),
                ),
          ],
        )



        ),
      );
  }

  Widget getBody(){

  }
}








