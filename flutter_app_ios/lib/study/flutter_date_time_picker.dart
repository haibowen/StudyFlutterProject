import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

//这里的使用是有问题的，待后续继续完善使用

void main() {
  runApp(DateTimePickerShow());
}

class DateTimePickerShow extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return DateTimePickerShowState();
  }
}

class DateTimePickerShowState extends State<DateTimePickerShow> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('日期'),
        ),
        body: Column(
          children: <Widget>[
            FlatButton(
              onPressed: () {
                DatePicker.showDatePicker(context,
                    showTitleActions: true,
                    maxTime: DateTime(2019, 6, 7),
                    minTime: DateTime(2000, 3, 5),
                    onChanged: (va) {},
                    onConfirm: (date) {},
                    currentTime: DateTime.now(),
                    locale: LocaleType.zh);
              },
              child: Text(
                'show time picker',
                style: TextStyle(color: Colors.blue),
              ),
            ),

            FlatButton(
              onPressed: () {},
              child: Text(
                '显示',
                style: TextStyle(color: Colors.lightBlue),
              ),
            ),

//
          ],
        ),
      ),
    );
  }
}
