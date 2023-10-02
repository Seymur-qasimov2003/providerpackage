import 'package:flutter/cupertino.dart';

class Hesablayici extends ChangeNotifier {
  int deyer = 0;
  int read() {
    return deyer;
  }

  void artir() {
    deyer++;
    notifyListeners();
  }

  void azalt(int say) {
    deyer = deyer - say;
    notifyListeners();
  }
}
