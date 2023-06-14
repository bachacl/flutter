import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Text(
            'Hello, American Code Lab! How are you?',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: 'Password'),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20)),
              onPressed: () {
                print('onPressed');
              },
              child: const Text('Enabled')),
          Image.network(
            'https://media.licdn.com/dms/image/C5622AQFur9fGpFXwaA/feedshare-shrink_800/0/1679029653675?e=1685577600&v=beta&t=3I_V3omoQtsP1wE5Wbpl11kIeuZII5JfVnK504g4klA',
            width: 300,
            height: 300,
          ),
          Container(
            color: Colors.amber[600],
            width: 48,
            height: 48,
          )
        ],
      ),
    );
  }
}
