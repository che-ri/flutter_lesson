import 'package:flutter/material.dart';
import 'package:painter/circle.dart';
import 'package:painter/rectangle.dart';
import 'package:painter/star.dart';

class PaintPage extends StatelessWidget {
  const PaintPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:

                /// painter를 화면에 표시하려면 CustomPaint 위젯으로 감싸주어야합니다.
                CustomPaint(painter: Star())));
  }
}
