import 'package:class3/bloc/counter_bloc.dart';
import 'package:class3/bloc/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        title: 'BLoC Example',
        home: CounterScreen(),
      ),
    );
  }
}
