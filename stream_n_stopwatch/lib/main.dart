import 'package:flutter/material.dart';
import 'package:stopwatch/stopwatch_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Painter Example - rectangle',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),

        /// painter를 화면에 표시하려면 CustomPaint 위젯으로 감싸주어야합니다.
        home: StopwatchPage());
  }
}
