
import 'package:flutter/material.dart';
class CounterWidget extends InheritedWidget{

  static CounterWidget of(BuildContext context)=>context.inheritFromWidgetOfExactType(CounterWidget) as CounterWidget;
  final int count;
  CounterWidget({
    Key key,
    @required this.count,
    @required Widget child,

}):super(key:key,child:child);
  @override
  bool updateShouldNotify(CounterWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return count!=oldWidget.count;
  }

}