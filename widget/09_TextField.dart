import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: TextField(
      decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(Icons.add_card),
          helperText: '0000-0000-0000 양식으로 입력해주세요.',
          hintText: '카드번호를 입력해주세요'),
      onChanged: (text) => print('TextField에 값을 입력할 때마다 함수가 실행됩니다. : $text'),
      onSubmitted: (text) =>
          print('TextField에 값을 입력 후, enter를 누르면 실행됩니다. : $text'),
    ));
  }
}
