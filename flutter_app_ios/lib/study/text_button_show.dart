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
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('测试'),
          ),
          body: DefaultTextStyle(
            style: TextStyle(color: Colors.red, fontSize: 28.0),
            child: Column(
              children: <Widget>[
                Text(
                  '生活不止以前的苟且还有诗和远方！！！',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20),
                ),
                Text('吾生也有涯，而知也无涯'),
                Text("加油中国，加油武汉"),
                RaisedButton(
                  child: Text('按钮显示'),
                  onPressed: () {},
                ),
                FlatButton(
                  color: Colors.red,
                  child: Text('flatbutton'),
                  onPressed: () {},
                ),
                OutlineButton(
                  textColor: Colors.red,
                  child: Text('outlinebutton'),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.thumb_up),
                  onPressed: () {},
                ),
                RaisedButton(
                  child: Text('raisebutton'),
                  onPressed: () {},
                ),
                RaisedButton.icon(
                    highlightColor: Colors.deepOrangeAccent,
                    splashColor: Colors.red,
                    onPressed: () {
                      print('raisebutto.icon');
                    },
                    icon: Icon(Icons.check),
                    label: Text('raisebutton icon')),
                OutlineButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.thumb_up),
                    label: Text('显示设置')),
                FlatButton.icon(
                    onPressed: () {}, icon: Icon(Icons.crop), label: Text('裁剪')),
                FlatButton(
                  color: Colors.blue,
                  highlightColor: Colors.deepOrangeAccent,
                  colorBrightness: Brightness.dark,//这样设置是为了保证按钮字体是浅色的
                  child: Text('圆角的按钮'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  onPressed: (){

                  },

                ),
                RaisedButton(
                  color:  Colors.red,
                  colorBrightness:Brightness.dark,
                  child: Text('raisebutton的圆角设置'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  onPressed: (){

                  },
                ),
              ],
            ),
          )),
    );
  }
}
