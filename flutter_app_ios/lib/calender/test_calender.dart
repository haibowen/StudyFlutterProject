import 'package:flutter/material.dart';
import 'package:flutter_custom_calendar/constants/constants.dart';
import 'package:flutter_custom_calendar/controller.dart';
import 'package:flutter_custom_calendar/flutter_custom_calendar.dart';
import 'package:flutter_custom_calendar/widget/calendar_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('日历组件'),
        ),
        body: Column(
          children: <Widget>[
            Container(

              child:  CalendarViewWidget(
                calendarController: CalendarController(
                    minYear: 2018,
                    minYearMonth: 1,
                    maxYear: 2020,
                    maxYearMonth: 12,
                    // selectDateModel:DateModel(),
                    showMode: CalendarConstants.MODE_SHOW_ONLY_MONTH),
              ),
            ),
//            Container(
////              height: 60,
////              width: 400,
//              child: RaisedButton(
//                child: Text('显示'),
//              ),
//            ),

          ],
        ),




      ),
    );
  }
}
