import 'package:flutter/material.dart';
import 'package:flutter_app_ios/test/app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    _ShowDatePicker(BuildContext context) {
      showDatePicker(
        context: context,
        initialDate: DateTime.parse("20181209"),
        //初始选中日期
        firstDate: DateTime.parse("20181109"),
        //可选日期范围第一个日期
        lastDate: DateTime.parse("20190109"),
        //可选日期范围最后一个日期
        selectableDayPredicate: (dateTime) {
          //通过此方法可以过滤掉可选范围内不可选的特定日期
          if (dateTime.day == 10 || dateTime.day == 20 || dateTime.day == 30) {
            //此处表示10号、20号、30号不可选
            return false;
          }
          return true;
        },
        initialDatePickerMode: DatePickerMode.day, //初始化选择模式，有day和year两种
      ).then((dateTime) {
        //选择日期后点击OK拿到的日期结果
        print('当前选择了：${dateTime.year}年${dateTime.month}月${dateTime.day}日');
      });
    }
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('显示'),
        ),
        body: RaisedButton(
            child: Text('调起'),
            onPressed: () {
            _ShowDatePicker(context);

            }),
      ),
    );
  }


}
