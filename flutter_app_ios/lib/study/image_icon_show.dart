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
          backgroundColor: Colors.grey,
          appBar: AppBar(
            title: Text('测试'),
          ),
          body: SingleChildScrollView(

            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Image(
                      color: Colors.blue,
                      colorBlendMode: BlendMode.hardLight,
                      fit: BoxFit.fill,
                      image: AssetImage('images/google_photo.png'),
                      width: 200.0,
                    ),
                    Image.asset(
                      'images/google_photo.png',
                      width: 200,
                      fit: BoxFit.cover,
                      color: Colors.pink,
                      colorBlendMode: BlendMode.multiply,
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[

                    Image(
                      image: NetworkImage('https://avatars2.githubusercontent.com/u/20411648?s=460&v=4'),
                      width: 200,
                      fit: BoxFit.fitHeight,
                      color: Colors.red,
                      colorBlendMode: BlendMode.hardLight,
                    ),
                    Image.network('https://avatars2.githubusercontent.com/u/20411648?s=460&v=4',width: 200,
                    fit: BoxFit.scaleDown,)
                  ],
                ),
                Row(
                  children: <Widget>[
                    Image(
                      image: NetworkImage('https://avatars2.githubusercontent.com/u/20411648?s=460&v=4'),
                      width: 200,
                      fit: BoxFit.contain,
                      color: Colors.blue,
                      colorBlendMode: BlendMode.hardLight,
                    ),
                    Image(
                      image: AssetImage('images/google_photo.png'),
                      width: 200,
                      height: 200,
                      repeat: ImageRepeat.repeatY,//设置重复的
                    ),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.thumb_up,color: Colors.blue,),
                    Icon(Icons.crop_square,color: Colors.pink,)
                  ],
                ),


              ],


            ),
          )),
    );
  }
}
