import 'package:flutter/material.dart';

void main() {
  runApp(GetWidgetWidthAndHeiget());
  // runApp(RoundCheckBox(value: false));
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
          appBar: AppBar(
            title: Text('测试'),
          ),
          body: Column(
            children: <Widget>[
              Checkbox(
                value: this.check,
                //activeColor: Colors.red,//激活时的颜色
                // checkColor: Colors.red,//对号的颜色
                onChanged: (bool va) {
                  setState(() {
                    this.check = !this.check;
                  });
                },
              ),
              new CheckboxListTile(
                secondary: const Icon(Icons.shutter_speed),
                title: const Text('硬件加速'),
                value: this.check,
                onChanged: (bool value) {
                  setState(() {
                    this.check = !this.check;
                  });
                },
              ),
              RoundCheckBox(
                value: this.check,
                onChanged: (bool value) {
                  setState(() {
                    this.check = !this.check;
                  });
                },
              ),
            ],
          )),
    );
  }
}

class RoundCheckBox extends StatefulWidget {
   bool value = false;

  final Function(bool) onChanged;

  RoundCheckBox({Key key, @required this.value, this.onChanged})
      : assert(value != null),
        super(key: key);

  @override
  _RoundCheckBoxState createState() => _RoundCheckBoxState();
}

class _RoundCheckBoxState extends State<RoundCheckBox> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
        onTap: () {
          widget.value = !widget.value;
          widget.onChanged(widget.value);
        },
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: widget.value
              ? Icon(
           // Icons.check_circle,
            Icons.check_box,
            size: 25.0,
            color: Colors.lightBlue,
          )
              : Icon(
            Icons.crop_square,
           // Icons.panorama_fish_eye,
           // Icons.check_box,
            size: 25.0,
            color: Colors.grey,
          ),
        ));
  }
}
