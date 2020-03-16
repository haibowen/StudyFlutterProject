import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeroAnimationDetailShow extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HeroAnimationDetailShowState();
  }
}

class HeroAnimationDetailShowState extends State<HeroAnimationDetailShow> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('显示设置'),
        ),
        body: Center(
          child: Hero(
            tag: 'photo',
            child: Image.asset('images/google_photo.png'),
          ),
        ),
      ),
    );
  }
}
