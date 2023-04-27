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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  /// ListView에서 사용될 데이터들을 명시합니다.
  final List<int> numbers = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          padding: EdgeInsets.all(100),
          scrollDirection: Axis.vertical,

          /// 표시할 자식위젯들의 수를 설정합니다.
          itemCount: numbers.length,

          /// 자식위젯들을 어떻게 화면에 그릴지 명시합니다
          itemBuilder: (context, index) => Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(), color: Colors.orangeAccent),
              child: Text('${numbers[index]}'))),
    );
  }
}
