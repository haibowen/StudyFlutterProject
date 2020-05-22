import 'package:fijkplayer/fijkplayer.dart';
import 'package:flutter/material.dart';

void main() {
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

    player.setDataSource(
        "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
        autoPlay: true);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text("Fijkplayer Example")),
          body: Container(
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 200,
                  child: FijkView(
                    player: player,
                  ),
                ),
                Text('介绍'),
              ],
            ),
          )),
    );
  }

  @override
  void dispose() {
    super.dispose();
    player.release();
  }
}
