import 'package:flutter/material.dart';
import 'package:flutter_app_ios/count_test/counter_model.dart';
import 'package:flutter_app_ios/count_test/customer_button.dart';
import 'package:provider/provider.dart';

import 'count_down_provider.dart';

class MyCountPage extends StatefulWidget {
  @override
  _MyCountPageState createState() => _MyCountPageState();
}

class _MyCountPageState extends State<MyCountPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('页面二'),
        ),
        body: Container(
            child: Column(
          children: <Widget>[
            Consumer<CounterModel>(
              builder: (context, CounterModel model, child) => CustomerButton(
                onClick: () {
                  model.change();
                },
              ),
            ),
            Consumer<CounterModel>(
              builder: (context, CounterModel model, child) => CustomerButton(
                onClick: () {
                  model.change();
                },
              ),
            ),
          ],
        )),
      ),
    );
  }
}
