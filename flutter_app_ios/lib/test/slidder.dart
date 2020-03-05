import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

    return  MaterialApp(
        home:  Scaffold(
          appBar: AppBar(
            title: Text('demo'),
          ),
          body: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 30),
              ),
              LinearProgressIndicator(
                // backgroundColor: Colors.blue,
                //value: 0.2,
                valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
              ),
              CircularProgressIndicator(
                strokeWidth: 4.0,
                valueColor: new AlwaysStoppedAnimation<Color>(Colors.grey),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
              ),
              CircularProgressIndicator(
                strokeWidth: 4.0,
                backgroundColor: Colors.blue,
                // value: 0.2,
                //valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
              ),
              CupertinoActivityIndicator(
                radius: 20.0,
                animating: true,
              ),
              SizedBox(
                child: CircularProgressIndicator(),
                height: 110.0,
                width: 110.0,
              ),
              SizedBox(
                child: CupertinoActivityIndicator(
                  radius: 80.0,
                  animating: true,
                ),
              ),

             SizedBox(
               width: 450,
               child:CupertinoSlider(
                   value: value,
                   //实际进度的位置
                   min: 0.0,
                   max: 100.0,
                   divisions: 20,//步进器
                   activeColor: Colors.blue,//线条的颜色
                   thumbColor: Colors.red,//按钮的颜色

                   //进度中活动部分的颜色
                   onChanged: (double) {
                     setState(() {
                       value = double.roundToDouble();
                     });
                   } ,
             )

              ),
              SizedBox(
                width: 450,
                child: Slider(
                  value: value,
                  min: 0.0,
                  max: 100.0,
                  divisions: 20,
                  activeColor: Colors.blue,
                  label: "$value",
                  onChanged: (double){
                    setState(() {
                      value=double.roundToDouble();
                    });

                  },

                ),
              ),




      SliderTheme( //自定义风格
        data: SliderTheme.of(context).copyWith(
            activeTrackColor: Colors.pink, //进度条滑块左边颜色
            inactiveTrackColor: Colors.blue, //进度条滑块右边颜色
           // trackShape: RoundSliderTrackShape(radius: 10),//进度条形状,这边自定义两头显示圆角
            thumbColor: Colors.yellow, //滑块颜色
            overlayColor: Colors.green, //滑块拖拽时外圈的颜色
            overlayShape: RoundSliderOverlayShape(//可继承SliderComponentShape自定义形状
              overlayRadius: 15, //滑块外圈大小
            ),
            thumbShape:


            RoundSliderThumbShape(//可继承SliderComponentShape自定义形状
              disabledThumbRadius: 15, //禁用是滑块大小
              enabledThumbRadius: 15, //滑块大小
            ),
            inactiveTickMarkColor: Colors.black,
            tickMarkShape: RoundSliderTickMarkShape(//继承SliderTickMarkShape可自定义刻度形状
              tickMarkRadius: 4.0,//刻度大小
            ),
            showValueIndicator: ShowValueIndicator.onlyForDiscrete,//气泡显示的形式
            valueIndicatorColor: Colors.red,//气泡颜色
            valueIndicatorShape: PaddleSliderValueIndicatorShape(),//气泡形状
            valueIndicatorTextStyle: TextStyle(color: Colors.black),//气泡里值的风格
            trackHeight: 1 //进度条宽度

        ),
        child: Slider(
          value: value,
          onChanged:    2>1? (v) {
            setState(() => value = v);
          }:null,
          label: "气泡:$value",//气泡的值
          divisions: 10, //进度条上显示多少个刻度点
          max: 100,
          min: 0,
        ),

      ),
            ],
          ),
        ),
      );


  }
}
