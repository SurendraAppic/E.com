import 'package:flutter/cupertino.dart';

class DemoProvider extends ChangeNotifier {
  int number = 0;

  incrriment() {
    number++;
    notifyListeners();
  }

  decriment() {
    number--;
    notifyListeners();
  }

  simple() {}
}
