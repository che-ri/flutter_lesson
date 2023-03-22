import 'package:flutter/material.dart';
import 'package:theme/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', home: const MyHome());
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('빨강', style: TextStyle(color: ColorTheme.red)),
          Text('오렌지', style: TextStyle(color: ColorTheme.orange)),
          Text('노랑', style: TextStyle(color: ColorTheme.yellow)),
          Text('라임', style: TextStyle(color: ColorTheme.lime)),
          Text('그린', style: TextStyle(color: ColorTheme.green)),
          Text('민트', style: TextStyle(color: ColorTheme.mint)),
          Text('하늘', style: TextStyle(color: ColorTheme.sky)),
          Text('파랑', style: TextStyle(color: ColorTheme.blue)),
          Text('보라', style: TextStyle(color: ColorTheme.purple)),
        ],
      ),
    ));
  }
}
