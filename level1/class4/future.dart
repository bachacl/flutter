void main() {
  Future<int> numberFuture = Future<int>.value(5);
  numberFuture.then((value) => print(value)).catchError((error) {
    // Handle error
  });
}
