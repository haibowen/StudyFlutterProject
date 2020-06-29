
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
//    ScreenUtil.init();
//    ScreenUtil.init(height: 1334,width:750 );
    //ScreenUtil.init(height: 1334,width: 750,allowFontScaling: false);
    return MaterialApp(
      home: ContainerUtils(),
    );
  }
}

class ContainerUtils extends StatefulWidget {
  @override
  _ContainerUtilsState createState() => _ContainerUtilsState();
}

class _ContainerUtilsState extends State<ContainerUtils> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('设置'),
      ),
      body: SingleChildScrollView(
        child:  Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(ScreenUtil().setWidth(10)),
              width: 375.w,
              height: 200.h,
              color: Colors.red,
              child: Text(
                'My width:${375.w}dp \n'
                    'My height:${200.h}dp',
                style: TextStyle(
                    color: Colors.white, fontSize: ScreenUtil().setSp(24)),
              ),
            ),
            Container(
              padding: EdgeInsets.all(ScreenUtil().setWidth(10)),
              width: ScreenUtil().setWidth(375),
              height: ScreenUtil().setHeight(200),
              color: Colors.blue,
              child: Text(
                  'My width:${ScreenUtil().setWidth(375)}dp \n'
                      'My height:${ScreenUtil().setHeight(200)}dp',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: ScreenUtil().setSp(24))),
            ),

          ],




        ),
      ),




    );
  }
}



