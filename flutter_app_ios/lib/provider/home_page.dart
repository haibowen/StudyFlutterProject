import 'package:flutter/material.dart';
import 'package:flutter_app_ios/provider/counter_model.dart';
import 'package:flutter_app_ios/provider/user_page.dart';
import 'package:provider/provider.dart';


void main() {
  final counter = CounterModel();
  final textSize = 29;

  runApp(Provider<int>.value(
    value: textSize,
    child: ChangeNotifierProvider.value(
      value: counter,
      child: MyApp(),
    ),
  ));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "标题栏",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int number = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('标题'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Consumer2<CounterModel, int>(
                  builder: (context, CounterModel model, int textSize, _) =>
                      Text(
                        "${model.value}",
                        style: TextStyle(fontSize: textSize.toDouble()),
                      )),
              FlatButton(
                child: Text('跳转'),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => UserPage()));
                },
              ),

              Consumer(builder: (context,CounterModel model,child)=>RaisedButton(
                child: Text('增加'),
                onPressed: (){

                  model.increment();
                },
              ),),


            ],
          ),
        ),
        floatingActionButton: Consumer<CounterModel>(
          builder: (context, CounterModel model, child) => FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: model.increment,
          ),
        ));
  }
}
