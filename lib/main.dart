import 'package:flutter/material.dart';
import 'package:home/home.dart';
import 'package:review/review.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Modularized App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/review': (context) => ReviewPage(),
      },
    );
  }
}