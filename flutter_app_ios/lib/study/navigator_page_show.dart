import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ios/study/navigator_page_second_show.dart';

void main() => runApp(NavigatorPageShow());

class NavigatorPageShow extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        home:NavigatorPageShowBody()
    );
  }
}


class NavigatorPageShowBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NavigatorPageShowState();
  }


}

class NavigatorPageShowState extends State<NavigatorPageShowBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('测试导航页面'),
      ),
      body: Column(
        children: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.push(context, new MaterialPageRoute(builder: (context){
                return NavigatorPageShow2();
              }));

//              Navigator.push(
//                  context,
//                  PageRouteBuilder(
//                      transitionDuration: Duration(milliseconds: 1500),
//                      pageBuilder: (BuildContext context, Animation animation,
//                          Animation secondaryAnimation) {
//                        return new FadeTransition(
//                          opacity: animation,
//                          child: NavigatorPageShow2(),
//                        );
//                      }));
            },
            child: Text('唤起'),
          ),
        ],
      ),
    );
  }
}
