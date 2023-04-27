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
        body: Column(
      children: [
        const Text('검정색 영역이 Text 위젯의 부모 위젯 영역입니다.',
            style: TextStyle(fontSize: 20)),
        const SizedBox(height: 20),
        Container(
            color: Colors.black,
            width: 200,
            child: const Text(
              'Text 위젯 예시 1 - overflow',

              /// Text의 글자는 화면에 표현된 것보다 길지만, 부모위젯의 너비에 넘치는 부분은 ... 으로 표현됩니다.
              overflow: TextOverflow.ellipsis,

              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            )),
        const SizedBox(height: 20),
        Container(
            color: Colors.black,
            width: 300,
            child: const Text(
              'Text 위젯 예시 2 - textAlign',

              /// TextAlign.start가 기본값이며, TextAlign.center이나 TextAlign.end를 이용해볼 수 있습니다.
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ))
      ],
    ));
  }
}
