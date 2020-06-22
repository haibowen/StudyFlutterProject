import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyAPP());
}

class MyAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterDemo(),
    );
  }
}

class CounterDemo extends StatefulWidget {


  @override
  _CounterDemoState createState() => _CounterDemoState();
}

class _CounterDemoState extends State<CounterDemo> {
  Timer _timer;
  int _countdownTime = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('验证码'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            if (_countdownTime == 0 ) {
              //Http请求发送验证码

              setState(() {
                _countdownTime = 60;
              });
              //开始倒计时
              startCountdownTimer();
            }
          },
          child: Text(
            _countdownTime > 0 ? '$_countdownTime后重新获取' : '获取验证码',
            style: TextStyle(
              fontSize: 14,
              color: _countdownTime > 0
                  ? Color.fromARGB(255, 183, 184, 195)
                  : Color.fromARGB(255, 17, 132, 255),
            ),
          ),
        ),
      )
    );
  }


  void startCountdownTimer() {
    const oneSec = const Duration(seconds: 1);

    var callback = (timer) => {
      setState(() {
        if (_countdownTime < 1) {
          _timer.cancel();
        } else {
          _countdownTime = _countdownTime - 1;
        }
      })
    };

    _timer = Timer.periodic(oneSec, callback);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    if(_timer!=null){
      _timer.cancel();
    }
  }
}
