

import 'package:fijkplayer/fijkplayer.dart';
import 'package:flutter/material.dart';


void main(){

  runApp(VideoScreen());
}
class VideoScreen extends StatefulWidget {
  // final String url;

  // VideoScreen({@required this.url});

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  final FijkPlayer player = FijkPlayer();

  _VideoScreenState();

  @override
  void initState() {
    super.initState();
    //



    player.setDataSource("https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4", autoPlay: true);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text("Fijkplayer Example")),
          body: IntrinsicHeight(
//            margin: EdgeInsets.only(top: 20),
//            height:  100,
            child: Row(

              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

                Container(
                  height: 60,
                  width: 200,
                  color: Colors.purple,
                ),
                Expanded(
                  child: Container(
                    color: Colors.lightBlue,

                  ),
                )


              ],
            )
          )) ,
    );



  }

  @override
  void dispose() {
    super.dispose();
    player.release();
  }
}
