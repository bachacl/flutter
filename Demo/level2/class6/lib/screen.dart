import 'package:class6/http_api.dart';
import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                fetchData();
              },
              child: Text('GET')),
          ElevatedButton(
              onPressed: () {
                sendData();
              },
              child: Text('POST'))
        ],
      ),
    );
  }
}
