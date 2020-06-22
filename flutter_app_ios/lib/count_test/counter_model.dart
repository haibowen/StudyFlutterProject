import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class CounterModel with ChangeNotifier {
  bool isStop = false;

  bool get value => isStop;

  void change() {
    isStop = !isStop;
    notifyListeners();
  }
}
