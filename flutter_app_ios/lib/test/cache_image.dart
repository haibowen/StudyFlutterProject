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
        body:Column(
          children: <Widget>[

            CachedNetworkImage(
              height: 200.0,
              alignment: Alignment.centerLeft,
              imageUrl: "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
              placeholder: (context, url) =>CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            )


          ],
        )


      ),
    );
  }

  Widget  getWidget(){
    return   Image.network(
      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
      height: 120,
      width: 120,
      frameBuilder: (BuildContext context, Widget child, int frame, bool wasSynchronouslyLoaded) {
        return Padding(
          padding: EdgeInsets.all(8.0),
          child: child,
        );
      },
      loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent loadingProgress) {
        if (loadingProgress == null)
          return child;
        return
          Container(
            width: 120,
            height: 120,
            child:   Center(
                child: Text('加载中')
//              CircularProgressIndicator(
//                value: loadingProgress.expectedTotalBytes != null
//                    ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes
//                    : null,
//              ),
            ),
          );

      },
    );
  }
}
