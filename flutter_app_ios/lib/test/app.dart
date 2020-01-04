

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

void main (){
  return runApp(MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:  'demo 测试',
      home: App()
    );
  }


}

class  App extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return AppState();
  }

}

class AppState extends State<App>{
  bool _check=false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('DEMO 测试'),

      ),
      body: Column(
        children: <Widget>[
          Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1577012397534&di=74d6395eb1a94fb78bc74f18693eeb65&imgtype=0&src=http%3A%2F%2Fa.hiphotos.baidu.com%2Fzhidao%2Fpic%2Fitem%2Fa71ea8d3fd1f4134ff7d7513221f95cad1c85e10.jpg",
          scale: 2.0,),
          Container(
            height: 200,
            child:  ListView(
              children: <Widget>[
                Text('ceshi'),
                Text('ceshi'),
                Text('ceshi'),
                Row(
                  children: <Widget>[
                    Text('ceshi'),
                    Text('ceshi'),
                    Text('ceshi'),
                  ],
                ),
                Container(
                  height: 50,
                  decoration:BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle
                  ),

                ),
                Swiper()
              ],
            ),
          ),

        ],


      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        tooltip: 'Increment',
        child: Icon(Icons.message),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.print),
              title: Text("页面一")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text("页面2")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.remove),
              title: Text("页面3")
          )

        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
              ),
              child: Center(
                child: SizedBox(
                  width: 60.0,
                  height: 60.0,
                  child: CircleAvatar(
                    child: Text("R"),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.style),
              title: Text("设置"),
            ),
            ListTile(
              leading: Icon(Icons.check),
              title: Text("模式"),
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text("增加"),
            )
          ],
        ),
      ),


    );
  }

}