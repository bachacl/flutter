Future<void> doSomethingAsync() async {
  print('Starting async operation...');
  await Future.delayed(Duration(seconds: 2));
  print('Async operation completed.');
}

void main() async {
  print('Before calling async function.');
  await doSomethingAsync();
  print('After calling async function.');
}
