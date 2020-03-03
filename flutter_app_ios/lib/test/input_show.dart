import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:marquee_flutter/marquee_flutter.dart';

void main() {
  runApp(GetWidgetWidthAndHeiget());
}

class GetWidgetWidthAndHeiget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePage();
  }
}

class HomePage extends State<GetWidgetWidthAndHeiget> {
  double value = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('demo'),
          ),
          body: Column(
            children: <Widget>[
              getWidget(),
             // getCunstomerWidget(),
              getWidgetType(),
              getWidgetTest(),
              Text(''),
              getWidgetShow()
            ],
          )),
    );
  }

  void _textFieldChanged(String str) {
    print(str);
  }

  Widget getCunstomerWidget() {
    return Container(
      child: Row(
        children: <Widget>[
          Text('测试'),
          TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 0.1),
                ),
//
                hintText: '请输入'),
            onChanged: _textFieldChanged,
            autofocus: false,
          ),
        ],
      ),
    );
  }

  Widget getWidget() {
    return TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 0.1),
          ),
//
          hintText: '请输入'),
      onChanged: _textFieldChanged,
      autofocus: false,
    );
  }

  Widget getWidgetType() {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          icon: Text('测试'),

//          border: OutlineInputBorder(
//            borderSide: BorderSide(
//                width: 0.1
//            ),
//            //borderRadius: BorderRadius.all(Radius.circular(0.0))
//          ),
//              contentPadding: EdgeInsets.all(10.0),
//              icon: Icon(Icons.text_fields),
          // labelText: '请输入你的姓名)',
          //helperText: '请输入你的真实姓名',
          hintText: '请输入'),
      onChanged: _textFieldChanged,
      autofocus: false,
    );
  }

  Widget getWidgetTest() {
    return TextFormField(
      //enabled: false,
      decoration: InputDecoration(
        //labelText: '请输入用户名',
        hintText: "用户名或邮箱",
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 13,
        ),

        border: OutlineInputBorder(
          borderSide: BorderSide(width: 0.1),
        ),
        prefixIcon: Container(
          width: 80,
          child:Center(child:  Text('显示',)
            ,)
          ,
        ),
        //prefixText: '显示',
        suffixIcon: Icon(Icons.volume_up),
        counterText:"20"

      ),
      //校验用户
      validator: (value) {
        return value.trim().length > 0 ? null : "用户名不能为空";
      },
      //当 Form 表单调用保存方法 Save时回调的函数。
      onSaved: (value) {
        //userName = value;
      },
      // 当用户确定已经完成编辑时触发
      onFieldSubmitted: (value) {},
    );
  }

  //
  Widget getWidgetShow() {
    return Form(
      child: Column(
        children: <Widget>[getWidgetTest(), getWidgetTest()],
      ),
    );
  }
}
