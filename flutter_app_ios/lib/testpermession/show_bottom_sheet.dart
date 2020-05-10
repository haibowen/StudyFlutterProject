// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class _BottomSheetContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Column(
        children: [
          Container(
            height: 70,
            child: Center(
              child: Text(
                'xianshi',
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const Divider(thickness: 1),

          Stack(
            children: <Widget>[
              Center(
                child: Column(
                  children: <Widget>[
                    Divider(),
                    Padding(child:
                      Divider(),
                    padding: EdgeInsets.only(top: 20),)
                  ],
                ),
              )

            ],
          ),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: 21,
                  itemBuilder: (context, index) {
                    return Center(
                        child: Column(
                      children: <Widget>[
                        Text('显示'),
                      ],
                    ));

//                        ListTile(
//                        title: Text('xianhsi'),
//                      );
                  },
                ),
              ),
              Expanded(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: 21,
                  itemBuilder: (context, index) {
                    return Center(
                        child: Column(
                          children: <Widget>[
                            Text('设置'),
                          ],
                        ));

                  },
                ),
                flex: 1,
              )
            ],
          )),
        ],
      ),
    );
  }
}

class _ModalBottomSheetDemo extends StatelessWidget {
  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (context) {
        return _BottomSheetContent();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          _showModalBottomSheet(context);
        },
        child: Text('测试'),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('显示'),
        ),
        body: _ModalBottomSheetDemo(),
      ),
    );
  }
}
