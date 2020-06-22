import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app_ios/count_test/counter_model.dart';
import 'package:flutter_app_ios/count_test/customer_button.dart';
import 'package:provider/provider.dart';

import 'count_page_show.dart';

void main() {
  final counter = CounterModel();
  final textSize = 20;

  runApp(Provider<int>.value(
    value: textSize,
    child: ChangeNotifierProvider.value(
      value: counter,
      child: MyApp(),
    ),
  ));
 // runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('标题'),
          ),
          body: DFCounterDown()),
    );
  }
}

class DFCounterDown extends StatefulWidget {
  final int timeSpacing; //计时的时间间隔，这里以分钟为单位
  final String format; //时间格式化处理
  final List<Widget> widgetChildren; //自定义的倒计时的孩子组件
  final double height; //自定义时间方框的高度
  final double width; //自定义时间的宽度
  final Color customerColor; //自定义时间方框的背景色

  DFCounterDown(
      {Key key,
      this.timeSpacing = 2,
      this.format,
      this.widgetChildren,
      this.width,
      this.height,
      this.customerColor})
      : super(key: key);

  @override
  DFCounterDownState createState() => DFCounterDownState();
}

class DFCounterDownState extends State<DFCounterDown> {
  Timer _timer;
  int seconds;
  bool isStop = false;
  CounterModel counterModelTest;

  @override
  Widget build(BuildContext context) {
    counterModelTest = Provider.of<CounterModel>(context);
    final textSize = Provider.of<int>(context).toDouble();
    if (widget.widgetChildren != null) {
      return customerWidget(seconds);
    } else {
      return normalWidget(seconds);
    }
  }

  @override
  void initState() {
    super.initState();
    //获取当期时间
    var now = DateTime.now();
    //获取 时间间隔
    var timeSpace =
        now.add(Duration(minutes: widget.timeSpacing)).difference(now);
    //获取总秒数，
    seconds = timeSpace.inSeconds;
    startTimer();
  }

  void startTimer() {
    //设置 1 秒回调一次
    const period = const Duration(seconds: 1);
    _timer = Timer.periodic(period, (timer) {
      //更新界面
      if (counterModelTest.value) {
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

  //时间格式化
  String constructTime(int seconds, String format) {
    //时间的转换计算
    int hour = seconds ~/ 3600;
    int minute = seconds % 3600 ~/ 60;
    int second = seconds % 60;
    int day = hour ~/ 24;
    if (format != null) {
      if (format.contains("天") ||
          format.contains("时") ||
          format.contains("分") ||
          format.contains("秒")) {
        return formatTime(day) +
            "天" +
            formatTime(hour) +
            "时" +
            formatTime(minute) +
            "分" +
            formatTime(second) +
            "秒";
      }
    }
    return formatTime(hour) +
        ":" +
        formatTime(minute) +
        ":" +
        formatTime(second);
  }

  void cancelTimer() {
    if (_timer != null) {
      _timer.cancel();
      _timer = null;
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    cancelTimer();
  }

  //自定义样式的倒计时
  Widget customerWidget(int seconds) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.center,
      // children: widget.widgetChildren
      children: <Widget>[
        Container(
          width: widget.width,
          height: widget.height,
          color: widget.customerColor,
          child: Center(
            child: Text(
              formatTime(seconds ~/ 3600),
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Container(
          child: Text(":"),
        ),
        Container(
          width: widget.width,
          height: widget.height,
          color: widget.customerColor,
          child: Center(
            child: Text(
              formatTime(seconds % 3600 ~/ 60),
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Container(
          child: Text(":"),
        ),
        Container(
          width: widget.width,
          height: widget.height,
          color: widget.customerColor,
          child: Center(
            child: Text(
              formatTime(seconds % 60),
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

//正常倒计时
  Widget normalWidget(int seconds) {
    return Column(
      children: <Widget>[
        Container(
          child: Text(constructTime(seconds, widget.format)),
        ),
        CustomerButton(
          onClick: () {
//            if(isStop==true){
//              isStop=false;
//            }
            stop();
          },
        ),
        CustomerButton(
          onClick: () {
//            if(isStop==false){
//              isStop=true;
//            }

            start();
          },
        ),
        CustomerButton(
          onClick: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => MyCountPage()));
          },
        ),
      ],
    );
  }

  //时间数字处理
  String formatTime(int timeNum) {
    return timeNum < 10 ? "0" + timeNum.toString() : timeNum.toString();
  }

  //开始
  start() {
    if (isStop == true) {
      // Log.d("DFCounterDownState####Start", "$isStop");
      isStop = false;
    }
  }

  //暂停
  stop() {
    if (isStop == false) {
      // Log.d("DFCounterDownState####stop", "$isStop");
      isStop = true;
    }
  }

//  @override
//  String getEventName() {
//    // TODO: implement getEventName
//    return "DFCounterDownState";
//  }
//
//  @override
//  onMessage(JsContext currentJsContext, BuildContext context,
//      Map<String, dynamic> data) {
//    // TODO: implement onMessage
//    switch (data['type']) {
//      case "start":
//        start();
//        break;
//      case "stop":
//        stop();
//        break;
//      default:
//        break;
//    }
//  }
}

class CounterDown extends ChangeNotifier {
  bool state = false;

  void changeState() {
    state = !state;
    notifyListeners();
  }
}
