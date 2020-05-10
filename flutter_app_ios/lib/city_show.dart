import 'dart:convert';

import 'package:city_pickers/city_pickers.dart';
import 'package:city_pickers/modal/result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ios/test/app.dart';
import 'package:flutter_picker/Picker.dart';

const PickerData = '''
[
    {
        "a": [
            {
                "a1": [
                    1,
                    2,
                    3,
                    4
                ]
            },
            {
                "a2": [
                    5,
                    6,
                    7,
                    8
                ]
            },
            {
                "a3": [
                    9,
                    10,
                    11,
                    12
                ]
            }
        ]
    },
    {
        "b": [
            {
                "b1": [
                    11,
                    22,
                    33,
                    44
                ]
            },
            {
                "b2": [
                    55,
                    66,
                    77,
                    88
                ]
            },
            {
                "b3": [
                    99,
                    1010,
                    1111,
                    1212
                ]
            }
        ]
    },
    {
        "c": [
            {
                "c1": [
                    "a",
                    "b",
                    "c"
                ]
            },
            {
                "c2": [
                    "aa",
                    "bb",
                    "cc"
                ]
            },
            {
                "c3": [
                    "aaa",
                    "bbb",
                    "ccc"
                ]
            }
        ]
    }
]
    ''';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var _scaffoldKey = new GlobalKey<ScaffoldState>();

  showPickerIcons(BuildContext context) {
    new Picker(
        adapter: PickerDataAdapter(data: [
          new PickerItem(text: Icon(Icons.add), value: Icons.add, children: [
            new PickerItem(text: Icon(Icons.more)),
            new PickerItem(text: Icon(Icons.aspect_ratio)),
            new PickerItem(text: Icon(Icons.android)),
            new PickerItem(text: Icon(Icons.menu)),
          ]),
          new PickerItem(text: Icon(Icons.add), value: Icons.add, children: [
            new PickerItem(text: Text('显示')),
            new PickerItem(text: Text('显示')),
          ]),
//          new PickerItem(
//              text: Icon(Icons.title),
//              value: Icons.title,
//              children: [
//                new PickerItem(text: Text('心事')),
//                new PickerItem(text: Icon(Icons.ac_unit)),
//                new PickerItem(text: Icon(Icons.access_alarm)),
//                new PickerItem(text: Icon(Icons.account_balance)),
//              ]),
//          new PickerItem(text: Icon(Icons.face), value: Icons.face, children: [
//            new PickerItem(text: Icon(Icons.add_circle_outline)),
//            new PickerItem(text: Icon(Icons.add_a_photo)),
//            new PickerItem(text: Icon(Icons.access_time)),
//            new PickerItem(text: Icon(Icons.adjust)),
//          ]),
//          new PickerItem(
//              text: Icon(Icons.linear_scale),
//              value: Icons.linear_scale,
//              children: [
//                new PickerItem(text: Icon(Icons.assistant_photo)),
//                new PickerItem(text: Icon(Icons.account_balance)),
//                new PickerItem(text: Icon(Icons.airline_seat_legroom_extra)),
//                new PickerItem(text: Icon(Icons.airport_shuttle)),
//                new PickerItem(text: Icon(Icons.settings_bluetooth)),
//              ]),
//          new PickerItem(text: Icon(Icons.close), value: Icons.close),
        ]),
        title: new Text("Select Icon"),
        onConfirm: (Picker picker, List value) {
          print(value.toString());
          print(picker.getSelectedValues());
        }).show(_scaffoldKey.currentState);
  }

//  showPickerArray(BuildContext context) {
//    new Picker(
//        adapter: PickerDataAdapter<String>(pickerdata: new JsonDecoder().convert(PickerData2), isArray: true),
//        hideHeader: true,
//        title: new Text("Please Select"),
//        onConfirm: (Picker picker, List value) {
//          print(value.toString());
//          print(picker.getSelectedValues());
//        }
//    ).showDialog(context);
//  }

  showPicker(BuildContext context) {
    Picker picker = new Picker(
        cancelText: "取消",
        confirmText: "开始",
        title: Text('这是标题'),
        adapter: PickerDataAdapter<String>(
            pickerdata: new JsonDecoder().convert(PickerData)),
        changeToFirst: true,
        textAlign: TextAlign.left,
        columnPadding: const EdgeInsets.all(8.0),
        onConfirm: (Picker picker, List value) {
          print(value.toString());
          print(picker.getSelectedValues());
        },
        onCancel: () {},
        onSelect: (Picker picker, int index, List value) {
          print(value.toString() + "$index");
          print(picker.getSelectedValues());
        });
    picker.show(_scaffoldKey.currentState);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text('show'),
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('open'),
              onPressed: () {
//show(context);

                // showPicker(context);
                showPickerIcons(context);
              },
            ),
            Divider(),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.grey.shade800,
                child: Text('AB'),
              ),
              label: Text('Aaron Burr'),
            )
          ],
        ),
      ),
    );
  }
}

show(BuildContext context) async {
  Result result = await CityPickers.showCityPicker(
    context: context,
  );
}
