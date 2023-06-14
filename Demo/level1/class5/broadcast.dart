import 'dart:async';

StreamController<int> controller = StreamController<int>.broadcast();

void main() async {
  controller.stream.listen((value) => print('Listener 1: $value'));
  controller.stream.listen((value) => print('Listener 2: $value'));

  for (var i = 1; i <= 5; i++) {
    controller.add(i);
    await Future.delayed(Duration(seconds: 1));
  }

  controller.close();
}
