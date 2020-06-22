
import 'package:flutter/cupertino.dart';

class CounterModel with ChangeNotifier{
  int count=10;
  int get value=>count;

  void increment(){
    count++;
    notifyListeners();
  }
}