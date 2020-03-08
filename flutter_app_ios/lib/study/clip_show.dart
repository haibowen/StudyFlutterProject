import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyAppbar());
}

class MyAppbar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return MyAppbarState();
  }
}

class MyAppbarState extends State<MyAppbar> {

  Widget image= Image(
    image: AssetImage('images/google_photo.png'),
    width: 200.0,
    height: 200.0,
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('appbar'),
          leading: Builder(builder: (context) {
            return IconButton(
                icon: Icon(
                  Icons.dashboard,
                  color: Colors.white,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                });
          }),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              image,
              ClipOval(
                child: image,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child:image,

              ),
            ],
          ),
        ),
      ),
    );
  }
}
