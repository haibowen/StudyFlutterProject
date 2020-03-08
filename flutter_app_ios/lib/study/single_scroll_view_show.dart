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
    String str="ASSDFGHJKLQWERTYUIOZXCVBNM";
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
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: str.split('')
              .map((c){
                return Text(
                  c,textScaleFactor: 2,
                );

              }).toList(),

            ),
          ),
        )
      ),
    );
  }
}
