import 'package:flutter/material.dart';
import 'package:animation/animation_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Animation Example',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AnimationPage());
  }
}
