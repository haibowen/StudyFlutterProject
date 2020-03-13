import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(ListenerShow());

class ListenerShow extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ListenerShowState();
  }
}

class ListenerShowState extends State<ListenerShow> {
  PointerEvent _pointerEvent;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('显示'),
        ),
        body: Column(
          children: <Widget>[
            Listener(
              child: Container(
                child: Text(
                  '显示',
                  style: TextStyle(fontSize: 20, color: Colors.lightBlue),
                ),
              ),
              onPointerDown: (PointerDownEvent event) {
                setState(() {
                  _pointerEvent = event;
                });
              },
              onPointerMove: (PointerMoveEvent event){
                setState(() {
                  _pointerEvent=event;

                });
              },

            )
          ],
        ),
      ),
    );
  }
}
