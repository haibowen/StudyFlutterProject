import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';



void main(){

  runApp(MaterialApp( localizationsDelegates: [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ],
    supportedLocales: [
      const Locale('zh', 'CH'),
      const Locale('en', 'US'),
    ],
    locale: Locale('zh'),home:TimePickerPage() ,));
}
class TimePickerPage extends StatefulWidget {
  TimePickerPage({Key key}) : super(key: key);

  _TimePickerPageState createState() => _TimePickerPageState();
}

class _TimePickerPageState extends State<TimePickerPage> {
  DateTime _selectedDate = DateTime.now(); //当前选中的日期
  TimeOfDay _selectedTime = TimeOfDay.now(); //当前选中的时间
  @override
  Widget build(BuildContext context) {
    //调起日期选择器
    _showDatePicker() {
      //获取异步方法里面的值的第一种方式：then
      showDatePicker(
        //如下四个参数为必填参数
        context: context,
        initialDate: _selectedDate, //选中的日期
        firstDate: DateTime(1980), //日期选择器上可选择的最早日期
        lastDate: DateTime(2100), //日期选择器上可选择的最晚日期
      ).then((selectedValue) {
        setState(() {
          //将选中的值传递出来
          this._selectedDate = selectedValue;
        });
      });
    }

    //调起时间选择器
    _showTimePicker() async {
      // 获取异步方法里面的值的第二种方式：async+await
      //await的作用是等待异步方法showDatePicker执行完毕之后获取返回值
      var result = await showTimePicker(
        context: context,
        initialTime: _selectedTime, //选中的时间
      );
      //将选中的值传递出来
      setState(() {
        this._selectedTime = result;
      });
    }

    return MaterialApp(


      home:  Scaffold(
        appBar: AppBar(title: Text("时间选择器演示页面")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //可以通过在外面包裹一层InkWell来让某组件可以响应用户事件
                InkWell(
                  onTap: () {
                    //调起日期选择器
                    //_showDatePicker();
                   // showDefaultYearPicker(context);


                    showModalBottomSheet(context:context,builder: (BuildContext context){

                      showDatePicker(
                          context: context, locale:Locale('zh') ,initialDate: DateTime.now(), firstDate: DateTime(2000), lastDate: DateTime(2030));
                      return Container(
                        color: Colors.red,
                      );

                    });

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('调起'),
//                    Text(formatDate(
//                        this._selectedDate, [yyyy, "-", mm, "-", "dd"])),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                ),
//                InkWell(
//                  onTap: () {
//                    //调起时间选择器
//                    _showTimePicker();
//                  },
//                  child: Row(
//                    mainAxisAlignment: MainAxisAlignment.center,
//                    children: <Widget>[
//                      Text("${this._selectedTime.format(context)}"),
//                      Icon(Icons.arrow_drop_down)
//                    ],
//                  ),
//                )
              ],
            )
          ],
        ),
      ),
    );



  }
}


//设置默认显示的日期为当前
DateTime initialDate = DateTime.now();

void showDefaultYearPicker(BuildContext context) async {
  final DateTime dateTime = await showDatePicker(
    context: context,
    //定义控件打开时默认选择日期
    initialDate: initialDate,
    //定义控件最早可以选择的日期
    firstDate: DateTime(2018, 1),
    //定义控件最晚可以选择的日期
    lastDate: DateTime(2022, 1),
    builder: (BuildContext context, Widget child) {
      return Theme(
       // data: CommonColors.themData,
        child: child,
      );
    },
  );
  if (dateTime != null && dateTime != initialDate) {}
}
