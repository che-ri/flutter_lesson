import 'package:flutter/material.dart';

class Circle extends CustomPainter {
  /// paint() 메서드에서는 어떤 것을 그릴 것인지 정의합니다.
  @override
  void paint(Canvas canvas, Size size) {
    /// 어떻게 그릴 것인지 정의합니다.
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    /// 실제적으로 원을 그리는 부분입니다.
    /// 1번째 인자 : 그림이 그려질 위치
    /// 2번째 인자 : 반지름
    /// 3번째 인자 : 그림 옵션
    canvas.drawCircle(Offset(0, 0), 50.0, paint);
  }

  ///shouldRepaint() 메서드의 경우, 이전에 그려진 것을 다시 그리지 않아도 되는지 여부를 결정합니다.
  @override
  bool shouldRepaint(Circle oldDelegate) => false;
}
