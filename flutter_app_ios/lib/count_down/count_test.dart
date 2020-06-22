import 'dart:async';

import 'package:flutter/material.dart';
import 'my_bottom_show.dart';
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

//              return showModalBottomSheetKeyBoard<int>(
//                context: context,
//                builder: (BuildContext context) {
//                  return ListView.builder(
//                    itemCount: 30,
//                    itemBuilder: (BuildContext context, int index) {
//                      return ListTile(
//                        title: Text("$index"),
//                        onTap: () => Navigator.of(context).pop(index),
//                      );
//                    },
//                  );
//                },
//              );

              return showModalBottomSheet<int>(
                context: context,
                builder: (BuildContext context) {
                  return ListView.builder(
                    itemCount: 30,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text("$index"),
                        onTap: () => Navigator.of(context).pop(index),
                      );
                    },
                  );
                },
              );



            },
            child: Text(
             "测试"
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
