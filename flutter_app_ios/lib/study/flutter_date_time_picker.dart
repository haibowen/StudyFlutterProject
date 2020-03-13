import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

//这里的使用是有问题的，待后续继续完善使用

void main() {
  runApp(DateTimeTest());
}


class DateTimeTest extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

  return MaterialApp(
    home: DateTimePickerShow(),
  );
  }



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
      return Scaffold(
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
                'show date picker',
                style: TextStyle(color: Colors.blue),
              ),
            ),


//
          FlatButton(
            onPressed: (){
              DatePicker.showTimePicker(context,
              showTitleActions: true,
              currentTime: DateTime.now(),
              locale: LocaleType.zh,
              onConfirm: (data){


              },
              onChanged: (va){

              },
              );

            },
            child:  Text('show time'),
          ),
            FlatButton(
              onPressed: (){
                DatePicker.showDateTimePicker(context,
                showTitleActions: true,
                currentTime: DateTime.now(),
                locale: LocaleType.zh,
                onChanged: (va){

                },
                onConfirm: (data){

                });
              },
              child: Text('显示'),
            ),
            FlatButton(),
          ],
        ),
    );
  }
}
