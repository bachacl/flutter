import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1), // Set the duration of the animation
      vsync: this, // Pass the TickerProviderStateMixin
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AnimatedBuilder(
            animation: _animation,
            builder: (BuildContext context, Widget? child) {
              return Opacity(
                  opacity: _animation.value, child: Text('Animations'));
            },
          ),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    _controller.forward();
                  },
                  child: Text('forward')),
              ElevatedButton(
                  onPressed: () {
                    _controller.reverse();
                  },
                  child: Text('reverse'))
            ],
          )
        ],
      ),
    );
  }
}
