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
        body: Row(
      children: [
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.orange)),
          onPressed: () {
            print('ElevatedButton을 눌렀습니다.');
          },
          child: Text('ElevatedButon'),
        ),
        TextButton(
            style: ButtonStyle(

                /// MaterialStatePropertyAll을 활용하면 모든 상태에 대한 스타일들을 통일시킬 수 있습니다.
                side: MaterialStatePropertyAll(
                    BorderSide(color: Colors.red, width: 3.0)),

                /// MaterialStateProperty.resolveWith을 활용하면 상태에 따라 스타일을 변경시킬 수 있습니다.
                backgroundColor: MaterialStateProperty.resolveWith(

                    /// 첫번째 인자에서(아래에선 states로 명시) 버튼의 상태를 받아올 수 있습니다.
                    (Set<MaterialState> states) {
// Tap 키를 통하여 해당 버튼이 포커싱된 경우 색상은 Colors.green입니다.
                  if (states.contains(MaterialState.focused))
                    return Colors.green;
// 버튼을 눌렀을 때의 경우 색상은 Colors.amber입니다.
                  if (states.contains(MaterialState.pressed))
                    return Colors.amber;
// 기본 색상은 Colors.black입니다.
                  return Colors.black;
                })),
            onPressed: () {
              print('TextButton을 눌렀습니다.');
            },
            child: Text('TextButon')),
        OutlinedButton(
            style: ButtonStyle(),
            onPressed: () {
              print('OutlinedButton을 눌렀습니다.');
            },
            child: Text('OutlinedButton')),
        IconButton(
            style: ButtonStyle(),
            onPressed: () {
              print('IconButton을 눌렀습니다.');
            },

            /// IconButton에는 child가 없고, 대신 icon을 설정할 수 있습니다.
            icon: Icon(Icons.account_circle))
      ],
    ));
  }
}
