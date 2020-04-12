import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(MyRequest());
}

class MyRequest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyRequestState();
  }
}

class MyRequestState extends State<MyRequest> {

  Future<void> requestPermission(Permission permission) async {
    final status = await permission.request();

    setState(() {
      print(status);

    });
  }
  @override
  void initState() {
    // TODO: implement initState
    requestPermission(Permission.sms);
    requestPermission(Permission.camera);
    super.initState();


  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('测试权限'),
        ),
        body: Container(
          child: RaisedButton(
            onPressed: (){
              requestPermission(Permission.sms);
              //openAppSettings();

            },
            child:   Text('test of the rewuest'),
          ) ,
          )


      ),
    );
  }
}
