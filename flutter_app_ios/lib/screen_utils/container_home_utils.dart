
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

class ContainerHomeUtils extends StatefulWidget {
  @override
  _ContainerHomeUtilsState createState() => _ContainerHomeUtilsState();
}

class _ContainerHomeUtilsState extends State<ContainerHomeUtils> {
  @override
  Widget build(BuildContext context) {
    return Container(
//      width: 200.w,
//      height: 300.h,
    width: ScreenUtil().setWidth(200),
    );
  }
}
