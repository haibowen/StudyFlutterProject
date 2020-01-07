import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ios/test/path_file.dart';
import 'package:flutter_app_ios/test/popmenu_button.dart';

import 'home.dart';
import 'list.dart';


void main()=>runApp(MyBottomNavBar());
class MyBottomNavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyBottombarState();
  }
}

class MyBottombarState extends State<MyBottomNavBar> {
  List<BottomNavigationBarItem> bottomebaritem = [];
  List<Widget> _bottomPageList=List();
  int _slecIndex=0;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _bottomPageList..add(Home())
    ..add(ExpansionTileSample())
    ..add(FlutterDemo());
  }

  var _pagecontroller=PageController();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('底部导航测试'),
        ),
        body:PageView.builder(
          controller: _pagecontroller,
          physics: NeverScrollableScrollPhysics(),
          onPageChanged: _pageChanged,
          itemCount: _bottomPageList.length,
          itemBuilder: (context,index)=>_bottomPageList[index],
           ),


        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('主页')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.skip_previous),
              title: Text('使用')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.verified_user),
              title: Text('个人')
            )
          ],
          type: BottomNavigationBarType.fixed,
          onTap: onTabPaged,
          selectedItemColor: Colors.lightBlueAccent,
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,
          currentIndex: _slecIndex,

        ),
      ),
    );
  }

  void _pageChanged(int index){
    setState(() {
      _slecIndex=index;
    });


  }
  void onTabPaged(int index){
    _pagecontroller.jumpToPage(index);

  }

}
