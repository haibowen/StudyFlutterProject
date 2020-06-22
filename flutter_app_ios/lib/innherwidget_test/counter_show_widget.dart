

import 'package:flutter/cupertino.dart';
import 'package:flutter_app_ios/innherwidget_test/home_page_show.dart';
import 'package:flutter_app_ios/main.dart';
import 'package:provider/provider.dart';

import 'home_page.dart';

class CounterShowWidget extends InheritedWidget{
  static CounterShowWidget of(BuildContext context)=>context.inheritFromWidgetOfExactType(CounterShowWidget) as CounterShowWidget;

  final HomePageStateTest  homePageState;
  final Function () increament;



  CounterShowWidget({Key key,@required this.homePageState, @required this.increament,@required Widget child}):super(key:key);

  @override
  bool updateShouldNotify(CounterShowWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return homePageState!=oldWidget;
  }



}