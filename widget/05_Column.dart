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

        /// Column의 부모위젯은 Container이며 너비와 높이는 최대값으로 설정했습니다.
        body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(

                /// 주축 정렬에 대해 정의합니다.
                mainAxisAlignment: MainAxisAlignment.center,

                /// 교차축 정렬에 대해 정의합니다.
                crossAxisAlignment: CrossAxisAlignment.center,

                /// 열에 들어갈 위젯들을 정의합니다.
                children: [
                  Container(height: 100, width: 300, color: Colors.amber),
                  Container(height: 200, width: 300, color: Colors.green),
                  Container(height: 50, width: 300, color: Colors.cyan)
                ])));
  }
}
