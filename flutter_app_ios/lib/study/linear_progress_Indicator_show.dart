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

class HomePage extends State<GetWidgetWidthAndHeiget>
    with SingleTickerProviderStateMixin {
  bool checkbox = false;
  bool switched = false;
  AnimationController _animationController;

  @override
  void initState() {
    //动画执行时间3秒
    _animationController =
        new AnimationController(vsync: this, duration: Duration(seconds: 3));
    _animationController.forward();
    _animationController.addListener(() => setState(() => {}));
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }

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
                // 模糊进度条(会执行一个动画)
                LinearProgressIndicator(
                  backgroundColor: Colors.grey[200],
                  valueColor: AlwaysStoppedAnimation(Colors.blue),
                ),
                LinearProgressIndicator(
                  backgroundColor: Colors.red[300],
                  valueColor: AlwaysStoppedAnimation(Colors.blue),
                  value: 0.7,
                ),
                CircularProgressIndicator(
                  backgroundColor: Colors.grey[200],
                  valueColor: AlwaysStoppedAnimation(Colors.blue),
                ),
                CircularProgressIndicator(
                  backgroundColor: Colors.grey[200],
                  valueColor: AlwaysStoppedAnimation(Colors.blue),
                  value: 0.3,
                ),
                SizedBox(
                  height: 13,
                  child: LinearProgressIndicator(
                    backgroundColor: Colors.pinkAccent[300],
                    valueColor: AlwaysStoppedAnimation(Colors.blue),
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 100,
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.red[200],
                    valueColor: AlwaysStoppedAnimation(Colors.deepOrangeAccent),
                    //value: 0.4,
                  ),
                ),
//                Padding(
//                  padding: EdgeInsets.all(16),
//                  child: LinearProgressIndicator(
//                    backgroundColor: Colors.grey[200],
//                    valueColor: ColorTween(begin: Colors.grey, end: Colors.blue)
//                        .animate(_animationController), // 从灰色变成蓝色
//                    value: 2,
//                  ),
//                ),
              ],
            ),
          )),
    );
  }
}
