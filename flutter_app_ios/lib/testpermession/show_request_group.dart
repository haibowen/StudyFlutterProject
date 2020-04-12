import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(ShowRequestGroup());
}

class ShowRequestGroup extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ShowRequestGroupState();
  }
}

class ShowRequestGroupState extends State<ShowRequestGroup> {
  requestPermiss() async {
    //请求权限
    Map<Permission, PermissionStatus> permissions = await [
      Permission.camera,
      Permission.storage,
    ].request();
    if (permissions[Permission.camera] != PermissionStatus.granted) {
      print("无照相权限");
    }
    if (permissions[Permission.location] != PermissionStatus.granted) {
      print("无定位权限");
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('测试'),
        ),
        body: Container(
          child: RaisedButton(
            onPressed: () {},
            child: Text('调权限'),
          ),
        ),
      ),
    );
  }
}
