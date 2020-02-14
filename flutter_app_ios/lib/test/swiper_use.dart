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
          body: Container(
            height: 300,
            child:new Swiper(
              itemBuilder: (BuildContext context,int index){
                return new Image.network("http://via.placeholder.com/350x150",fit: BoxFit.fill,);
              },
              itemCount: 4,
              pagination: new SwiperPagination(),
              //control: new SwiperControl(),
              autoplay: true,
            ),
          )

      ),
    );
  }


}








