import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ios/test/expation_title.dart';
import 'package:flutter_app_ios/test/popmenu_button.dart';

import 'drop_down.dart';

void main() => runApp(HomeTest());

class HomeTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<HomeTest> {
  int _currentIndex = 0;
  List<Widget> _pages;

  @override
  void initState() {
    _pages = [
      new Dropdown(),
      new ExpationTitleTest(),
      new PopMenuButton(),
    ];
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  var _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PageView.builder(
            controller: _pageController,
            physics: NeverScrollableScrollPhysics(),
            onPageChanged: _pageChanged,
            itemCount: _pages.length,
            itemBuilder: (context, index) => _pages[index]),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          //点击选择
          type: BottomNavigationBarType.shifting,
          onTap: onTabTapped,
          items: [
            BottomNavigationBarItem(
                //backgroundColor: Theme.of(context).appBarTheme.color
                icon: Icon(Icons.home),
                title: Text("公会"),
                backgroundColor: Theme.of(context).appBarTheme.color),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                title: Text("活动"),
                backgroundColor: Theme.of(context).appBarTheme.color),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text("我的"),
                backgroundColor: Theme.of(context).appBarTheme.color),
          ],
          selectedItemColor: Colors.lightBlueAccent,
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,

        ),
      ),
    );
  }

  void _pageChanged(int index) {
    setState(() {
      if (_currentIndex != index) _currentIndex = index;
    });
  }

  void onTabTapped(int index) {
    _pageController.jumpToPage(index);
  }
}
