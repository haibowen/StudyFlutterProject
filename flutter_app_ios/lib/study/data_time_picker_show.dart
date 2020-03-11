import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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
  DateTime _selectedDate = DateTime.now(); //当前选中的日期
  TimeOfDay _selectedTime = TimeOfDay.now(); //当前选中的时间
  @override
  Widget build(BuildContext context) {
    //调起时间选择器
    _showTimePicker() async {
      // 获取异步方法里面的值的第二种方式：async+await
      //await的作用是等待异步方法showDatePicker执行完毕之后获取返回值
      var result = await showTimePicker(
        context: context,
        initialTime: _selectedTime, //选中的时间
      );
      //将选中的值传递出来
      setState(() {
        this._selectedTime = result;
      });
    }

    Future<DateTime> _showTime() {
      var date = DateTime.now();
      return showCupertinoModalPopup(
        context: context,
        builder: (ctx) {
          return SizedBox(
            height: 200,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.dateAndTime,
              minimumDate: date,
              maximumDate: date.add(
                Duration(days: 30),
              ),
              maximumYear: date.year + 1,
              onDateTimeChanged: (DateTime value) {
                print(value);
              },
            ),
          );
        },
      );
    }

    //调起日期选择器
    _showDatePicker() {
      //获取异步方法里面的值的第一种方式：then
      showDatePicker(
        //如下四个参数为必填参数
        context: context,
        initialDate: _selectedDate, //选中的日期
        firstDate: DateTime(1980), //日期选择器上可选择的最早日期
        lastDate: DateTime(2100), //日期选择器上可选择的最晚日期
      ).then((selectedValue) {
        setState(() {
          //将选中的值传递出来
          this._selectedDate = selectedValue;
        });
      });
    }

    var _time;

    _showDataPicker() async {
      Locale myLocale = Localizations.localeOf(context);
      var picker = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2016),
          lastDate: DateTime(2019),
          locale: myLocale);
      setState(() {
        _time = picker.toString();
      });
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('日期'),
        ),
        body: Column(
          children: <Widget>[
//            Container(
//              height: 200,
//              child: CupertinoDatePicker(
//                mode: CupertinoDatePickerMode.date,
//                  minuteInterval:4,
//                initialDateTime: DateTime(2020, 01, 01),
//                onDateTimeChanged: (val) {
//                  print(" ${val.year},${val.month}");
//                },
//                minimumDate: DateTime(2012, 01, 01),
//                minimumYear: 2012,
//                maximumDate: DateTime(2021, 01, 01),
//                maximumYear: 2022,
//              ),
//            ),
//            Container(
//              height: 200,
//              child: CupertinoTimerPicker(
//                mode: CupertinoTimerPickerMode.hms,
//                initialTimerDuration: Duration(
//                  hours: 20,
//                  minutes: 20,
//                  seconds: 12,
//                ),
//                 // locale: Locale("zh"),//中文显示
//
//
//                onTimerDurationChanged: (duration) {
//                  print(duration.inHours);
//                },
//              ),
//            ),
            InkWell(
              onTap: () {
                _showDataPicker();
              },
              child: Text('start'),
            )
          ],
        ),
      ),

      //配置如下两个国际化的参数
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [const Locale("zh", "CH"), const Locale("en", "US")],
    );
  }
}
