import 'package:async_await/screens/buttonscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Asincronía con Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ButtonScreen(title: 'Asincronía con Flutter'),
    );
  }
}
