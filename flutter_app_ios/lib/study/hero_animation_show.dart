import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ios/study/hero_animation_detial_show.dart';

void main() => runApp(HeroAnimation());

class HeroAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HeroAnimationStateShow(),
    );
  }
}

class HeroAnimationStateShow extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HeroAnimationState();
  }
}

class HeroAnimationState extends State<HeroAnimationStateShow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('设置'),
      ),
      body: Container(
        alignment: Alignment.topLeft,
        child: InkWell(
          child: Hero(
            tag: 'photo',
            child: ClipOval(
              child: Image.asset(
                'images/google_photo.png',
                width: 50,
              ),
            ),
          ),
          onTap: () {
            Navigator.push(context,

                PageRouteBuilder(
                    transitionDuration: Duration(milliseconds: 1000),
                    pageBuilder:
                (BuildContext context, Animation animation,
                    Animation secondaryAnimation) {
              return FadeTransition(
                opacity: animation,
                child: HeroAnimationDetailShow(),
              );
            }));
          },
        ),
      ),
    );
  }
}
