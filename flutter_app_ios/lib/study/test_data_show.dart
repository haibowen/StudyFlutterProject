import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Datetime Picker'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            FlatButton(
                onPressed: () {
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

//                  DatePicker.showDatePicker(context,
//                      showTitleActions: true,
//                      minTime: DateTime(2018, 3, 5),
//                      maxTime: DateTime(2019, 6, 7),
//                      theme: DatePickerTheme(
//                          headerColor: Colors.orange,
//                          backgroundColor: Colors.blue,
//                          itemStyle: TextStyle(
//                              color: Colors.white,
//                              fontWeight: FontWeight.bold,
//                              fontSize: 18),
//                          doneStyle:
//                          TextStyle(color: Colors.white, fontSize: 16)),
//                      onChanged: (date) {
//                        print('change $date in time zone ' +
//                            date.timeZoneOffset.inHours.toString());
//                      }, onConfirm: (date) {
//                        print('confirm $date');
//                      }, currentTime: DateTime.now(), locale: LocaleType.en);
                },
                child: Text(
                  'show date picker(custom theme &date time range)',
                  style: TextStyle(color: Colors.blue),
                )),
            FlatButton(
                onPressed: () {
                  DatePicker.showTimePicker(context, showTitleActions: true,
                      onChanged: (date) {
                    print('change $date in time zone ' +
                        date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                    print('confirm $date');
                  }, currentTime: DateTime.now());
                },
                child: Text(
                  'show time picker',
                  style: TextStyle(color: Colors.blue),
                )),
            FlatButton(
                onPressed: () {
                  DatePicker.showTime12hPicker(context, showTitleActions: true,
                      onChanged: (date) {
                    print('change $date in time zone ' +
                        date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                    print('confirm $date');
                  }, currentTime: DateTime.now());
                },
                child: Text(
                  'show 12H time picker with AM/PM',
                  style: TextStyle(color: Colors.blue),
                )),
            FlatButton(
                onPressed: () {
                  DatePicker.showDateTimePicker(context,
                      showTitleActions: true,
                      minTime: DateTime(2020, 5, 5, 20, 50),
                      maxTime: DateTime(2020, 6, 7, 05, 09), onChanged: (date) {
                    print('change $date in time zone ' +
                        date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                    print('confirm $date');
                  }, locale: LocaleType.zh);
                },
                child: Text(
                  'show date time picker (Chinese)',
                  style: TextStyle(color: Colors.blue),
                )),
            FlatButton(
                onPressed: () {
                  DatePicker.showDateTimePicker(context, showTitleActions: true,
                      onChanged: (date) {
                    print('change $date in time zone ' +
                        date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                    print('confirm $date');
                  }, currentTime: DateTime(2008, 12, 31, 23, 12, 34));
                },
                child: Text(
                  'show date time picker (English-America)',
                  style: TextStyle(color: Colors.blue),
                )),
            FlatButton(
                onPressed: () {
                  DatePicker.showDateTimePicker(context, showTitleActions: true,
                      onChanged: (date) {
                    print('change $date in time zone ' +
                        date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                    print('confirm $date');
                  },
                      currentTime: DateTime(2008, 12, 31, 23, 12, 34),
                      locale: LocaleType.nl);
                },
                child: Text(
                  'show date time picker (Dutch)',
                  style: TextStyle(color: Colors.blue),
                )),
            FlatButton(
                onPressed: () {
                  DatePicker.showDateTimePicker(context, showTitleActions: true,
                      onChanged: (date) {
                    print('change $date in time zone ' +
                        date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                    print('confirm $date');
                  },
                      currentTime: DateTime(2008, 12, 31, 23, 12, 34),
                      locale: LocaleType.ru);
                },
                child: Text(
                  'show date time picker (Russian)',
                  style: TextStyle(color: Colors.blue),
                )),
            FlatButton(
                onPressed: () {
                  DatePicker.showDateTimePicker(context, showTitleActions: true,
                      onChanged: (date) {
                    print('change $date in time zone ' +
                        date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                    print('confirm $date');
                  },
                      currentTime: DateTime.utc(2019, 12, 31, 23, 12, 34),
                      locale: LocaleType.de);
                },
                child: Text(
                  'show date time picker in UTC (German)',
                  style: TextStyle(color: Colors.blue),
                )),
            FlatButton(
                onPressed: () {
                  DatePicker.showPicker(context, showTitleActions: true,
                      onChanged: (date) {
                    print('change $date in time zone ' +
                        date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                    print('confirm $date');
                  },
                      // pickerModel: CustomPicker(currentTime: DateTime.now()),
                      locale: LocaleType.en);
                },
                child: Text(
                  'show custom time picker,\nyou can custom picker model like this',
                  style: TextStyle(color: Colors.blue),
                )),
          ],
        ),
      ),
    );
  }
}

class MyAppbar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return MyAppbarState();
  }
}

class MyAppbarState extends State<MyAppbar> {
  Widget image = Image(
    image: AssetImage('images/google_photo.png'),
    width: 200.0,
    height: 200.0,
  );

  @override
  Widget build(BuildContext context) {
    String str = "ASSDFGHJKLQWERTYUIOZXCVBNM";

    Future<DateTime> _showDatePicker1() {
      var date = DateTime.now();
      return showDatePicker(
        context: context,
        initialDate: date,
        firstDate: date,
        lastDate: date.add(
          //未来30天可选
          Duration(days: 30),
        ),
      );
    }

    var _time;
    _showTimePicker() async {
      var picker =
          await showTimePicker(context: context, initialTime: TimeOfDay.now());
      setState(() {
        _time = picker.toString();
      });
    }

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

    Future<DateTime> _showDatePicker2() {
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

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('appbar'),
            leading: Builder(builder: (context) {
              return IconButton(
                  icon: Icon(
                    Icons.dashboard,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    //Scaffold.of(context).openDrawer();
                    _showDatePicker2();
                  });
            }),
          ),
          body: Column(children: <Widget>[])),
    );
  }
}

class DFFlex extends StatelessWidget {
  DFFlex({Key key, this.flex, this.direction = Axis.horizontal, this.child})
      : super(key: key);
  final Axis direction;
  final int flex;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: direction,
      children: <Widget>[
        Expanded(
          flex: flex,
          child: child,
        ),
      ],
    );
  }
}

class DFFlexTest extends StatelessWidget {
  final List<Widget> children;

  final Axis direction;

  DFFlexTest({this.children = const <Widget>[], this.direction});

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: direction,
      children: children,
    );
  }
}

//按比例划分的组件
class DFFlexed extends StatelessWidget {
  DFFlexed({Key key, this.flex, this.child}) : super(key: key);
  final int flex;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: child,
    );
  }
}
