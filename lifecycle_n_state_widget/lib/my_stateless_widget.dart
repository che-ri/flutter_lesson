import 'package:flutter/material.dart';

class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({super.key}) {
    print('constructor : 클래스 생성 단계입니다.');
  }

  @override
  Widget build(BuildContext context) {
    print('build : 위젯을 화면에 그려주는 단계입니다.');
    return Scaffold(
        body: Center(
      child: Container(
        color: Colors.green,
        width: 300,
        height: 300,
      ),
    ));
  }
}
