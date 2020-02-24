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

    return  MaterialApp(
      home:  Scaffold(
          appBar: AppBar(
            title: Text('demo'),
          ),
          body:Container(
            width: 200,
            child: Column(
              children: <Widget>[
                DropdownButton(
                  items: <DropdownMenuItem<String>>[
                    DropdownMenuItem(
                      child: Text('这是第一组的数据'),),
                    DropdownMenuItem(child: Text('111'),),
                    DropdownMenuItem(child: Text('111'),)
                  ],
                  hint: Text('这是第一组的数据'),
                  onChanged: (select){
                    setState(() {
                    });
                  },
                ),
                ExpansionTile(
                  title: Center(
                    child: Text('显示全部商品') ,
                  ),
                  //leading: Icon(Icons.star),
                  children: <Widget>[
                    Text('123'),
                    Container(width: 30,
                      height: 40,),
                    Text('123'),
                    Text('123'),
                    Text('123'),
                    Text('123'),
                    Text('123'),
                  ],
                ),
                DropdownButton(
                  items: <DropdownMenuItem<String>>[
                    DropdownMenuItem(
                      child: Text('这是第一组的数据'),),
                    DropdownMenuItem(child: Text('111'),),
                    DropdownMenuItem(child: Text('111'),)
                  ],
                  hint: Text('这是第一组的数据'),
                  onChanged: (select){
                    setState(() {
                    });
                  },
                ),
              ],
            )
            ,
          )





      ),
    );
  }


}








