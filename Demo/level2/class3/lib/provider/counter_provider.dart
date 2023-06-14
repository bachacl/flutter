import 'package:class3/provider/counter.dart';
import 'package:flutter/foundation.dart';

class CounterProvider with ChangeNotifier {
  Counter _counter = Counter(0);

  Counter get counter => _counter;

  void increment() {
    _counter.count++;
    notifyListeners();
  }

  void decrement() {
    _counter.count--;
    notifyListeners();
  }
}
