import 'package:flutter/material.dart';

void main() {
  runApp(ImageAndIconRoute());
}

class ImageAndIconRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ImageAndIconRouteState();
  }
}

class ImageAndIconRouteState extends State<ImageAndIconRoute> {
  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textEditingController.addListener((){
      print(textEditingController.text);
    });

  }

  @override
  Widget build(BuildContext context) {
   // print(textEditingController.text);
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('测试'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TextField(
                controller: textEditingController,
                autofocus: true,
                decoration: InputDecoration(
                    labelText: '用户名',
                    hintText: '用户名和邮箱',
                    prefixIcon: Icon(Icons.crop)),
              ),
              TextField(
                autofocus: true,
                decoration: InputDecoration(
                    labelText: '用户名',
                    hintText: getStringText(),
                    prefixIcon: Icon(Icons.crop)),
              ),
            ],
          ),
        ),
      ),
    );
  }
 String getStringText(){
    setState(() {

    });
    return textEditingController.text;

  }
}
