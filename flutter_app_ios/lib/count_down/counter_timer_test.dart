import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(){

  runApp(Countdown());
}
class Countdown extends StatefulWidget {
  @override
  _CountdownState createState() => _CountdownState();
}

class _CountdownState extends State<Countdown> {

  Timer _timer;
  int seconds;

  bool isStop=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('计时器'),
        ),
        body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(constructTime(seconds)),
              RaisedButton(child: Text('暂停'),onPressed: (){

                if(isStop==false){
                  isStop=true;
                }
//                setState(() {
//
//
//                });


              },),
              RaisedButton(
                child: Text('继续'),onPressed: (){

                if(isStop==true){
                  isStop=false;
                }
//                  setState(() {
//
//                  });


              },
              ),
            ],
          )
        ),
      ),
    );
  }

  //时间格式化，根据总秒数转换为对应的 hh:mm:ss 格式
  String constructTime(int seconds) {
    int hour = seconds ~/ 3600;
    int minute = seconds % 3600 ~/ 60;
    int second = seconds % 60;
    //int millisecond=seconds%60*1000;
   // return formatTime(hour) + ":" + formatTime(minute) + ":" + formatTime(second);
    return formatTime(hour) + "时" + formatTime(minute) + "分" + formatTime(second)+"秒";
  }

  //数字格式化，将 0~9 的时间转换为 00~09
  String formatTime(int timeNum) {
    return timeNum < 10 ? "0" + timeNum.toString() : timeNum.toString();
  }

  @override
  void initState() {
    super.initState();
    //获取当期时间
    var now = DateTime.now();
    //获取 2 分钟的时间间隔
    var twoHours = now.add(Duration(minutes: 72)).difference(now);
    //获取总秒数，2 分钟为 120 秒
    seconds = twoHours.inSeconds;
    startTimer();
  }

  void startTimer() {
    //设置 1 秒回调一次
    const period = const Duration(seconds: 1);
    _timer = Timer.periodic(period, (timer) {
      //更新界面
      if(isStop){
        return;
      }
      setState(() {
        //秒数减一，因为一秒回调一次

        seconds--;

      });
      if (seconds == 0) {
        //倒计时秒数为0，取消定时器
        cancelTimer();
      }
    });
  }

  void cancelTimer() {
    if (_timer != null) {
      _timer.cancel();
      _timer = null;
    }
  }

  @override
  void dispose() {
    super.dispose();
    cancelTimer();
  }

}