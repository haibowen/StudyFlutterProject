


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void  main(){
 return  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: MyAppState(),
    );
  }

}
class MyAppState extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return MyAppStated();

  }

}

class MyAppStated extends State<MyAppState>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Demo'),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 3.0,//子控件宽高比
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Card(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(10),
                    child: Text('data $index'),
                  ),
                );
              },
              childCount: 20,
            ),
          ),


          SliverList(
            delegate: SliverChildListDelegate(
              //返回组件集合
              List.generate(20, (int index){
                //返回 组件
                return GestureDetector(
                  onTap: () {
                    print("点击$index");
                  },
                  child: Card(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(10),
                      child: Text('data $index'),
                    ),
                  ),
                );
              }),
            ),
          ),


        ],
      ),
    );

  }

}


