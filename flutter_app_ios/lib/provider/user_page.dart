import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_model.dart';

class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterModel>(context);
    final textSize = Provider.of<int>(context).toDouble();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('标题'),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Text("${counter.value}",style: TextStyle(
                fontSize: textSize.toDouble()
              ),),
              FlatButton(
                child: Icon(Icons.check),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
