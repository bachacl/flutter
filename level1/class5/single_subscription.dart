Stream<int> countStream(int count) async* {
  for (var i = 1; i <= count; i++) {
    yield i;
    await Future.delayed(Duration(seconds: 1));
  }
}

void main() async {
  var stream = countStream(5);
  await for (var i in stream) {
    print(i);
  }
  print('Done!');
}
