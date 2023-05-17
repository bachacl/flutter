import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Quiz Game',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 40, color: Colors.blue),
          ),
          Container(
            height: 16,
          ),
          const Text(
            '2023 American Code Lab',
            style: TextStyle(fontSize: 24, color: Colors.blue),
          )
        ],
      ),
    );
  }
}
